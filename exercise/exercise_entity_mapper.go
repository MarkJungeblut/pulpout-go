package exercise

import (
	"pulpout.com/advice"
	"pulpout.com/equipment"
	"pulpout.com/muscle"
)

type ExerciseValue struct {
	Exercise
	MuscleMap    map[uint]muscle.Muscle
	EquipmentMap map[uint]equipment.Equipment
	AdviceMap    map[uint]advice.Advice
}

func mapToSlice[K comparable, V any](m map[K]V) []V {
	s := make([]V, 0, len(m))
	for _, v := range m {
		s = append(s, v)
	}
	return s
}

func createExercisesFromExerciseEntities(entities []ExerciseEntity) []Exercise {
	var exerciseMap = make(map[int]ExerciseValue)

	for _, entity := range entities {
		if _, ok := exerciseMap[int(entity.Id)]; !ok {
			exerciseMap[int(entity.Id)] = createExerciseValueFromEntity(entity)
		}

		var exercise ExerciseValue = exerciseMap[int(entity.Id)]

		if advice := createAdviceFromExerciseEntity(entity); advice != nil {
			if _, ok := exercise.AdviceMap[advice.Id]; !ok {
				exercise.AdviceMap[advice.Id] = *advice
			}
		}

		if _, ok := exercise.MuscleMap[entity.MuscleId]; !ok {
			exercise.MuscleMap[entity.MuscleId] = createMuscleFromExerciseEntity(entity)
		}

		if _, ok := exercise.EquipmentMap[entity.EquipmentId]; !ok {
			exercise.EquipmentMap[entity.EquipmentId] = createEquipmentFromExerciseEntity(entity)
		}

		exerciseMap[int(entity.Id)] = exercise
	}

	var exercises []Exercise

	for _, value := range exerciseMap {
		var exercise Exercise = value.Exercise

		exercise.Advices = mapToSlice(value.AdviceMap)
		exercise.Muscles = mapToSlice(value.MuscleMap)
		exercise.Equipments = mapToSlice(value.EquipmentMap)

		exercises = append(exercises, exercise)
	}

	return exercises
}

func createExerciseFromEntity(entity ExerciseEntity) Exercise {
	defaultExercise := NewExercise()

	return Exercise{
		Id:          entity.Id,
		Name:        entity.Name,
		Description: entity.Description,
		Muscles:     defaultExercise.Muscles,
		Equipments:  defaultExercise.Equipments,
		Advices:     defaultExercise.Advices,
	}
}

func createExerciseValueFromEntity(entity ExerciseEntity) ExerciseValue {
	return ExerciseValue{
		Exercise:     createExerciseFromEntity(entity),
		MuscleMap:    make(map[uint]muscle.Muscle),
		EquipmentMap: make(map[uint]equipment.Equipment),
		AdviceMap:    make(map[uint]advice.Advice),
	}
}

func createAdviceFromExerciseEntity(entity ExerciseEntity) *advice.Advice {
	if entity.AdviceId == nil && entity.AdviceName == nil {
		return nil
	}

	return &advice.Advice{Id: *entity.AdviceId, Name: *entity.AdviceName, ExerciseId: entity.Id}
}

func createMuscleFromExerciseEntity(entity ExerciseEntity) muscle.Muscle {
	return muscle.Muscle{
		Id:            entity.MuscleId,
		Name:          entity.MuscleName,
		NameLatin:     entity.MuscleNameLatin,
		MuscleGroupId: entity.MuscleGroupId,
		MuscleGroup:   createMuscleGroupFromExerciseEntity(entity),
	}
}

func createMuscleGroupFromExerciseEntity(entity ExerciseEntity) muscle.MuscleGroup {
	return muscle.MuscleGroup{
		Id:        entity.MuscleGroupId,
		Name:      entity.MuscleGroupName,
		NameLatin: entity.MuscleGroupNameLatin,
	}
}

func createEquipmentFromExerciseEntity(entity ExerciseEntity) equipment.Equipment {
	return equipment.Equipment{
		Id:   entity.EquipmentId,
		Name: entity.EquipmentName,
	}
}
