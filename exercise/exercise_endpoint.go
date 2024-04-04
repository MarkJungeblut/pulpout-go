package exercise

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

func GetExercises(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, SelectExercises())
}

func GetExercisesOfWorkoutSchedule(c *gin.Context) {

	idStr := c.Param("id")

	id, err := strconv.ParseUint(idStr, 10, 64)
	if err != nil {
		// Handle the error (invalid ID format)
		c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid workout schedule ID"})
		return
	}

	c.IndentedJSON(http.StatusOK, SelectExercisesOfWorkoutSchedule(uint(id)))
}
