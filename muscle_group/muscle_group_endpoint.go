package muscle_group

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func GetMuscleGroups(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, SelectMuscleGroups())
}
