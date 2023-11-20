package exercises

import (
	"github.com/gin-gonic/gin"
	"net/http"
	. "pulpout.com/exercises/entities"
)

var exercises = []Exercise{
	{ID: 10},
	// {ID: "3", Title: "Sarah Vaughan and Clifford Brown", Artist: "Sarah Vaughan", Price: 39.99},
}

func GetExercises(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, exercises)
}
