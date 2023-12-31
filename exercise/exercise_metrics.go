package exercise

import (
	"fmt"
	"time"

	"github.com/go-co-op/gocron/v2"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promauto"
	"pulpout.com/utils"
)

// TODO: Change package to metrics because otherwise the variables are available due to package private scope.
var (
	exercisesWithoutEquipment = promauto.NewGauge(prometheus.GaugeOpts{
		Name: "pulpout_exercises_without_equipment",
		Help: "The count of exercises without equipment",
	})

	exercisesTotal = promauto.NewGauge(prometheus.GaugeOpts{
		Name: "pulpout_exercises_total",
		Help: "The total count of exercises",
	})

	atTimes gocron.AtTimes = gocron.NewAtTimes(
		gocron.NewAtTime(6, 0, 0),
	)

	startTime gocron.StartAtOption = gocron.WithStartDateTime(time.Now().Add(time.Second))
)

func StartExerciseMetricsScheduler() {
	startExerciseCountScheduler()
	startExercisesWithoutEquipmentCountScheduler()
}

func startExerciseCountScheduler() {
	startScheduler(func() {
		var count = CountExercises()
		fmt.Println("Exercises: ", count)
		exercisesTotal.Set(float64(count))
	})
}

func startExercisesWithoutEquipmentCountScheduler() {
	startScheduler(func() {
		var count = CountExercisesWithoutEquipment()
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
