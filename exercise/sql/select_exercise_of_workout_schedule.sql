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
WHERE
    wse.workout_schedule_id = $1;
