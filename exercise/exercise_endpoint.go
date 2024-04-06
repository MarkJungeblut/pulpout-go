package exercise

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

func HandleGetExercises(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, GetExercises())
}

func HandleGetExercisesOfWorkoutSchedule(c *gin.Context) {

	idStr := c.Param("id")

	id, err := strconv.ParseUint(idStr, 10, 64)
	if err != nil {
		// Handle the error (invalid ID format)
		c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid workout schedule ID"})
		return
	}

	c.IndentedJSON(http.StatusOK, GetExercisesOfWorkoutSchedule(uint(id)))
}
