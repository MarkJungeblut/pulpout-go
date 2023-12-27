package muscle

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func GetMuscles(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, SelectMuscles())
}
