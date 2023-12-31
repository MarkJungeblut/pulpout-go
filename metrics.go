package main

import (
	"pulpout.com/exercise"
	"pulpout.com/exercise_group"
)

func MetricsScheduler() {
	exercise.StartExerciseMetricsScheduler()
	exercise_group.StartExerciseGroupMetricsScheduler()
}
