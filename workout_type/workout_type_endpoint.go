package workout_type

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func GetWorkoutTypes(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, SelectWorkoutTypes())
}
