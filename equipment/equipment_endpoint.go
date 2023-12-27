package equipment

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func GetEquipment(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, SelectEquipment())
}
