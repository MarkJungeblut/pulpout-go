SELECT * FROM exercise
INNER JOIN
    workout_schedule_exercise wse ON wse.exercise_id = exercise.id
WHERE
    wse.workout_schedule_id = $1;
