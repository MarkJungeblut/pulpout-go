package exercise

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func GetExercises(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, SelectExercises())
}
