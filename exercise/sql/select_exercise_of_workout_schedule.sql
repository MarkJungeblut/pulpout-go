SELECT 
    exercise.id,
    exercise.name,
    exercise.description,
    exercise_group.id exercise_group_id,
    exercise_group.name exercise_group_name,
  	muscle.id muscle_id,
	muscle.name muscle_name,
	muscle.name_latin muscle_name_latin,
	muscle_group.id muscle_group_id,
	muscle_group.name muscle_group_name,
	muscle_group.name_latin muscle_group_name_latin,
	equipment.id equipment_id,
	equipment.name equipment_name,
	advice.id advice_id,
	advice.name advice_name
FROM exercise
    INNER JOIN workout_schedule_exercise wse ON wse.exercise_id = exercise.id
    INNER JOIN exercise_group ON exercise.exercise_group_id = exercise_group.id
    INNER JOIN exercise_muscle ON exercise_muscle.exercise_id = exercise.id
    INNER JOIN muscle ON exercise_muscle.muscle_id = muscle.id
    INNER JOIN muscle_group ON muscle_group.id = muscle.muscle_group_id
    INNER JOIN exercise_equipment ON exercise_equipment.exercise_id = exercise.id
    LEFT JOIN equipment ON equipment.id = exercise_equipment.equipment_id
	LEFT JOIN advice ON advice.exercise_id = exercise.id
WHERE
    wse.workout_schedule_id = 1
	
GROUP BY exercise.id, exercise_group.id, muscle.id, muscle_group.id, equipment.id, advice.id