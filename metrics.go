package main

import (
	"fmt"
	"time"

	"github.com/go-co-op/gocron/v2"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promauto"
	"pulpout.com/exercise"
	"pulpout.com/utils"
)

var (
	exercisesWithoutEquipment = promauto.NewGauge(prometheus.GaugeOpts{
		Name: "pulpout_exercises_without_equipment",
		Help: "The count of exercises without equipment",
	})

	exercises = promauto.NewGauge(prometheus.GaugeOpts{
		Name: "pulpout_exercises_total",
		Help: "The total count of exercises",
	})

	atTimes gocron.AtTimes = gocron.NewAtTimes(
		gocron.NewAtTime(6, 0, 0),
	)

	startTime gocron.StartAtOption = gocron.WithStartDateTime(time.Now().Add(time.Second))
)

func MetricsScheduler() {
	exercisesScheduler()
	exercisesWithoutEquipmentScheduler()
}

func exercisesScheduler() {
	startScheduler(func() {
		var count = exercise.CountExercises()
		fmt.Println("Exercises: ", count)
		exercises.Set(float64(count))
	})
}

func exercisesWithoutEquipmentScheduler() {
	startScheduler(func() {
		var count = exercise.CountExercisesWithoutEquipment()
		fmt.Println("Exercises without equipment: ", count)
		exercisesWithoutEquipment.Set(float64(count))
	})
}

func startScheduler(function func()) {
	fmt.Println("Starting scheduler...")

	scheduler, err := gocron.NewScheduler()

	utils.HandleError(err)

	job, err := scheduler.NewJob(
		gocron.DailyJob(
			1,
			atTimes,
		),
		gocron.NewTask(
			func() {
				function()
			},
		),
		gocron.WithStartAt(startTime),
	)

	utils.HandleError(err)
	fmt.Println("Job id: ", job.ID())
	scheduler.Start()
}
