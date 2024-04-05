SELECT 
    exercise.id,
    exercise.name,
    exercise.description,
    exercise.created_at,
    exercise.updated_at,
    exercise.exercise_group_id,
    exercise_group.id,
    exercise_group.name,
    exercise_group.created_at,
    exercise_group.updated_at
FROM exercise
    INNER JOIN workout_schedule_exercise wse ON wse.exercise_id = exercise.id
    INNER JOIN exercise_group ON exercise.exercise_group_id = exercise_group.id
    INNER JOIN muscle_exercise ON muscle_exercise.exercise_id = exercise.id
    INNER JOIN muscle ON muscle_exercise.muscle_id = muscle.id
    INNER JOIN muscle_group ON muscle_group.id = muscle.muscle_group_id
    INNER JOIN equipment_exercise ON equipment_exercise.exercise_id = exercise.id
    INNER JOIN equipment ON equipment.id = equipment_exercise.equipment_id  
WHERE
    wse.workout_schedule_id = $1;
