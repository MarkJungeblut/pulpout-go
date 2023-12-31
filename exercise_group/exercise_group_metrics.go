package exercise_group

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
	exerciseGroupsWithoutWorkoutType = promauto.NewGauge(prometheus.GaugeOpts{
		Name: "pulpout_exercise_groups_without_workout_type",
		Help: "The count of exercise groups which are not assigned to an workout type",
	})

	exerciseGroupsTotal = promauto.NewGauge(prometheus.GaugeOpts{
		Name: "pulpout_exercise_groups_total",
		Help: "The total count of exercise groups",
	})

	atTimes gocron.AtTimes = gocron.NewAtTimes(
		gocron.NewAtTime(6, 0, 0),
	)

	startTime gocron.StartAtOption = gocron.WithStartDateTime(time.Now().Add(time.Second))
)

func StartExerciseGroupMetricsScheduler() {
	startExerciseGroupsWithoutWorkoutTypeCountScheduler()
	startExerciseGroupsCountScheduler()
}

func startExerciseGroupsWithoutWorkoutTypeCountScheduler() {
	startScheduler(func() {
		var count = CountExerciseGroupsWithoutWorkoutType()
		fmt.Println("Exercise groups without workout type: ", count)
		exerciseGroupsWithoutWorkoutType.Set(float64(count))
	})
}

func startExerciseGroupsCountScheduler() {
	startScheduler(func() {
		var count = CountExerciseGroups()
		fmt.Println("Exercise groups: ", count)
		exerciseGroupsTotal.Set(float64(count))
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
