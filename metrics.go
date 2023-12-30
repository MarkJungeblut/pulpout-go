package main

import (
	"fmt"
	"time"

	"github.com/go-co-op/gocron/v2"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promauto"
	"pulpout.com/utils"
)

var (
	exercisesWithoutEquipment = promauto.NewGauge(prometheus.GaugeOpts{
		Name: "pulpout_exercises_without_equipment",
		Help: "The count of exercises without equipment",
	})
)

func MetricsScheduler() {
	exercisesWithoutEquipmentScheduler()
}

func exercisesWithoutEquipmentScheduler() {
	fmt.Println("Starting scheduler...")

	scheduler, err := gocron.NewScheduler()

	utils.HandleError(err)

	job, err := scheduler.NewJob(
		gocron.DailyJob(
			1,
			gocron.NewAtTimes(
				gocron.NewAtTime(6, 0, 0),
			),
		),
		gocron.NewTask(
			func() {
				exercisesWithoutEquipment.Set(10)
			},
		),
		gocron.WithStartAt(gocron.WithStartDateTime(time.Now().Add(time.Second))),
	)

	utils.HandleError(err)
	fmt.Println(job.ID())
	scheduler.Start()
}
