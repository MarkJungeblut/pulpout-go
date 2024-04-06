SELECT COUNT(e.id)
FROM exercise e
LEFT JOIN exercise_equipment ee ON e.id = ee.exercise_id
WHERE ee.exercise_id IS NULL;
