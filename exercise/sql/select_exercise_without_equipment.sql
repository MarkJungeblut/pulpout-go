SELECT e.id, e.name
FROM exercise e
LEFT JOIN equipment_exercise ee ON e.id = ee.exercise_id
WHERE ee.exercise_id IS NULL;
