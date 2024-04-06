package exercise

type ExerciseEntity struct {
	Id                   uint
	Name                 string
	Description          string
	ExerciseGroupId      uint
	ExerciseGroupName    string
	MuscleId             uint
	MuscleName           string
	MuscleNameLatin      string
	MuscleGroupId        uint
	MuscleGroupName      string
	MuscleGroupNameLatin string
	EquipmentId          uint
	EquipmentName        string
	AdviceId             *uint
	AdviceName           *string
}
