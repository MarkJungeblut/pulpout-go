package main

import (
	"github.com/gin-gonic/gin"
	"pulpout.com/equipment"
	"pulpout.com/muscle"
	"pulpout.com/muscle_group"
)

func SetupRouter() {
	router := gin.Default()
	router.GET("/muscle/group", muscle_group.GetMuscleGroups)
	router.GET("/muscle", muscle.GetMuscles)
	router.GET("/equipment", equipment.GetEquipment)

	_ = router.Run("localhost:8080")
}
