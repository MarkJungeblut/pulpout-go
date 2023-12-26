package muscle_group

import (
	"net/http"
	"github.com/gin-gonic/gin"
)

var muscleGroups = []MuscleGroup{}

func GetMuscleGroups(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, muscleGroups)
}
