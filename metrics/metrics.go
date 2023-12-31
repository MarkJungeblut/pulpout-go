package metrics

import (
	"fmt"
	"time"

	"github.com/go-co-op/gocron/v2"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promauto"
	"pulpout.com/exercise"
	"pulpout.com/utils"
)

// TODO: Change package to metrics because otherwise the variables are available due to package private scope.



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
