package workout_schedule

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

func GetWorkoutSchedules(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, SelectWorkoutSchedules())
}

func GetWorkoutScheduleById(c *gin.Context) {
	idStr := c.Param("id")

	id, err := strconv.ParseUint(idStr, 10, 64)
	if err != nil {
		// Handle the error (invalid ID format)
		c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid workout schedule ID"})
		return
	}

	workoutSchedule := SelectWorkoutScheduleById(uint(id))
	if workoutSchedule == nil {
		// Handle the case where the workout schedule is not found
		c.JSON(http.StatusNotFound, gin.H{"error": "Workout schedule not found"})
		return
	}

	c.IndentedJSON(http.StatusOK, workoutSchedule)
}

func PostWorkoutSchedule(c *gin.Context) {
	var workoutSchedule WorkoutSchedule

	if err := c.ShouldBindJSON(&workoutSchedule); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	if err := InsertWorkoutSchedule(workoutSchedule); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Error while inserting a workout schedule."})
		return
	}

	c.JSON(http.StatusOK, workoutSchedule)
}
