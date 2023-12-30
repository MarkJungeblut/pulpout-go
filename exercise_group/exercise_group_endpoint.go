package exercise_group

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func GetExerciseGroups(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, SelectExerciseGroups())
}
