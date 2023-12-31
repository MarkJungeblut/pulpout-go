SELECT COUNT(e.id)
FROM exercise_group e
LEFT JOIN exercise_group_workout_type ew ON e.id = ew.exercise_group_id
WHERE ew.workout_type_id IS NULL;
