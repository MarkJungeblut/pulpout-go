package main

import (
	"github.com/gin-gonic/gin"
	"pulpout.com/muscle_group"
)

func SetupRouter() {
	router := gin.Default()
	router.GET("/exercises", muscle_group.GetMuscleGroups)

	_ = router.Run("localhost:8080")
}
