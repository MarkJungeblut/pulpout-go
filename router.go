package main

import (
	"github.com/gin-gonic/gin"
	"github.com/prometheus/client_golang/prometheus/promhttp"
	"pulpout.com/equipment"
	"pulpout.com/muscle"
	"pulpout.com/muscle_group"
)

func SetupRouter() {
	router := gin.Default()
	router.GET("/muscle/group", muscle_group.GetMuscleGroups)
	router.GET("/muscle", muscle.GetMuscles)
	router.GET("/equipment", equipment.GetEquipment)
	router.GET("/metrics", gin.WrapH(promhttp.Handler()))

	_ = router.Run("localhost:8080")
}
