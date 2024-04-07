-- Bankdrücken
INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Standard Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Standard Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Schrägbankdrücken'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Schrägbankdrücken'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Schrägbankdrücken mit Kurzhantel'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Schrägbankdrücken mit Kurzhantel'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Negativ Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Negativ Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Kurzhantel Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Kurzhantel Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Maschinen Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Maschinen Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Explosives Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Explosives Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Einarmiges Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Einarmiges Bankdrücken'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

-- Liegestütze
INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Klassische Liegestütze'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Klassische Liegestütze'), (SELECT id FROM muscle WHERE name = 'Vorderer Sägemuskel')),
((SELECT id FROM exercise WHERE name = 'Klassische Liegestütze'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Enge Liegestütze'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Enge Liegestütze'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Breite Liegestütze'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Breite Liegestütze'), (SELECT id FROM muscle WHERE name = 'Vorderer Sägemuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Liegestütze mit erhöhten Beinen'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Liegestütze mit Klatschen'), (SELECT id FROM muscle WHERE name = 'Großer Brustmuskel')),
((SELECT id FROM exercise WHERE name = 'Liegestütze mit Klatschen'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Diamanten-Liegestütze'), (SELECT id FROM muscle WHERE name = 'Trizeps')),
((SELECT id FROM exercise WHERE name = 'Diamanten-Liegestütze'), (SELECT id FROM muscle WHERE name = 'Vorderer Sägemuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Liegestütze auf den Fingern'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

-- Kniebeugen
INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Klassische Kniebeugen'), (SELECT id FROM muscle WHERE name = 'Quadrizeps')),
((SELECT id FROM exercise WHERE name = 'Klassische Kniebeugen'), (SELECT id FROM muscle WHERE name = 'Adduktorengruppe'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Klassische Kniebeugen mit Langhantel'), (SELECT id FROM muscle WHERE name = 'Quadrizeps')),
((SELECT id FROM exercise WHERE name = 'Klassische Kniebeugen mit Langhantel'), (SELECT id FROM muscle WHERE name = 'Adduktorengruppe'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Frontkniebeugen'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Sumo-Kniebeugen'), (SELECT id FROM muscle WHERE name = 'Adduktorengruppe')),
((SELECT id FROM exercise WHERE name = 'Sumo-Kniebeugen'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Overhead-Kniebeugen'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Goblet-Kniebeugen'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Split-Kniebeugen'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Split-Kniebeugen mit Kurzhantel'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

-- Kreuzheben

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Klassisches Kreuzheben'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker')),
((SELECT id FROM exercise WHERE name = 'Klassisches Kreuzheben'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Sumo-Kreuzheben'), (SELECT id FROM muscle WHERE name = 'Adduktorengruppe')),
((SELECT id FROM exercise WHERE name = 'Sumo-Kreuzheben'), (SELECT id FROM muscle WHERE name = 'Quadrizeps')),
((SELECT id FROM exercise WHERE name = 'Sumo-Kreuzheben'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Rumänisches Kreuzheben'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Defizit-Kreuzheben'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker')),
((SELECT id FROM exercise WHERE name = 'Defizit-Kreuzheben'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Kreuzheben mit gestreckten Beinen'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Einbeiniges Kreuzheben'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker')),
((SELECT id FROM exercise WHERE name = 'Einbeiniges Kreuzheben'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Einbeiniges Kreuzheben mit Kurzhantel'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker')),
((SELECT id FROM exercise WHERE name = 'Einbeiniges Kreuzheben mit Kurzhantel'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

-- Schulterdrücken

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Militärpresse'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Dumbbell Shoulder Press'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Arnold Press'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Seated Barbell Press'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Seated Dumbbell Press'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

-- Bizepscurls

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Kurzhantel-Curls'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Langhantel-Curls'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Hammer Curls'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Concentration Curls'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Preacher Curls'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Preacher Curls mit Kurzhantel'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Cable Bicep Curls'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

-- Trizepsdrücken

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'French Press mit Langhantel'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'French Press mit Kurzhantel'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Triceps Dips'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Cable Triceps Pushdown'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Overhead Triceps Extension'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Skull Crushers'), (SELECT id FROM muscle WHERE name = 'Trizeps'));

-- Rudern

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Barbell Rows'), (SELECT id FROM muscle WHERE name = 'Latissimus')),
((SELECT id FROM exercise WHERE name = 'Barbell Rows'), (SELECT id FROM muscle WHERE name = 'Bizeps')),
((SELECT id FROM exercise WHERE name = 'Barbell Rows'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Dumbbell Rows'), (SELECT id FROM muscle WHERE name = 'Latissimus')),
((SELECT id FROM exercise WHERE name = 'Dumbbell Rows'), (SELECT id FROM muscle WHERE name = 'Bizeps')),
((SELECT id FROM exercise WHERE name = 'Dumbbell Rows'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'T-Bar Rows'), (SELECT id FROM muscle WHERE name = 'Latissimus')),
((SELECT id FROM exercise WHERE name = 'T-Bar Rows'), (SELECT id FROM muscle WHERE name = 'Bizeps')),
((SELECT id FROM exercise WHERE name = 'T-Bar Rows'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Seated Cable Rows'), (SELECT id FROM muscle WHERE name = 'Latissimus')),
((SELECT id FROM exercise WHERE name = 'Seated Cable Rows'), (SELECT id FROM muscle WHERE name = 'Bizeps')),
((SELECT id FROM exercise WHERE name = 'Seated Cable Rows'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Machine Rows'), (SELECT id FROM muscle WHERE name = 'Latissimus')),
((SELECT id FROM exercise WHERE name = 'Machine Rows'), (SELECT id FROM muscle WHERE name = 'Bizeps')),
((SELECT id FROM exercise WHERE name = 'Machine Rows'), (SELECT id FROM muscle WHERE name = 'Rückenstrecker'));

-- Latziehen

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Lat Pulldown'), (SELECT id FROM muscle WHERE name = 'Latissimus')),
((SELECT id FROM exercise WHERE name = 'Lat Pulldown'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Wide-Grip Lat Pulldown'), (SELECT id FROM muscle WHERE name = 'Latissimus')),
((SELECT id FROM exercise WHERE name = 'Wide-Grip Lat Pulldown'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Close-Grip Lat Pulldown'), (SELECT id FROM muscle WHERE name = 'Latissimus')),
((SELECT id FROM exercise WHERE name = 'Close-Grip Lat Pulldown'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Reverse-Grip Lat Pulldown'), (SELECT id FROM muscle WHERE name = 'Latissimus')),
((SELECT id FROM exercise WHERE name = 'Reverse-Grip Lat Pulldown'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'V-Bar Lat Pulldown'), (SELECT id FROM muscle WHERE name = 'Latissimus')),
((SELECT id FROM exercise WHERE name = 'V-Bar Lat Pulldown'), (SELECT id FROM muscle WHERE name = 'Bizeps'));

-- Beinpresse

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Beinpresse mit engem Stand'), (SELECT id FROM muscle WHERE name = 'Quadrizeps')),
((SELECT id FROM exercise WHERE name = 'Beinpresse mit engem Stand'), (SELECT id FROM muscle WHERE name = 'Großer Gesäßmuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Beinpresse mit weitem Stand'), (SELECT id FROM muscle WHERE name = 'Quadrizeps')),
((SELECT id FROM exercise WHERE name = 'Beinpresse mit weitem Stand'), (SELECT id FROM muscle WHERE name = 'Adduktorengruppe')),
((SELECT id FROM exercise WHERE name = 'Beinpresse mit weitem Stand'), (SELECT id FROM muscle WHERE name = 'Großer Gesäßmuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Einzeln Beinpresse'), (SELECT id FROM muscle WHERE name = 'Quadrizeps')),
((SELECT id FROM exercise WHERE name = 'Einzeln Beinpresse'), (SELECT id FROM muscle WHERE name = 'Adduktorengruppe')),
((SELECT id FROM exercise WHERE name = 'Einzeln Beinpresse'), (SELECT id FROM muscle WHERE name = 'Großer Gesäßmuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Beinpresse mit hoher Fußstellung'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Beinpresse mit niedriger Fußstellung'), (SELECT id FROM muscle WHERE name = 'Quadrizeps')),
((SELECT id FROM exercise WHERE name = 'Beinpresse mit niedriger Fußstellung'), (SELECT id FROM muscle WHERE name = 'Adduktorengruppe'));

-- Wadenheben

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Wadenheben an der Maschine'), (SELECT id FROM muscle WHERE name = 'Wadenmuskeln'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Sitzendes Wadenheben'), (SELECT id FROM muscle WHERE name = 'Wadenmuskeln'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Wadenheben an der Beinpresse'), (SELECT id FROM muscle WHERE name = 'Wadenmuskeln'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Einbeiniges Wadenheben'), (SELECT id FROM muscle WHERE name = 'Wadenmuskeln'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Barbell Calf Raise'), (SELECT id FROM muscle WHERE name = 'Wadenmuskeln'));

-- Seitheben

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Seitheben mit Kurzhanteln'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Seitheben am Kabelzug'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Seitheben an der Maschine'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Einarmiges Seitheben mit Kurzhantel'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Seitheben im Sitzen'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

-- Facepulls

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Face Pulls am Kabelzug'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Face Pulls mit Widerstandsband'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Face Pulls mit TRX-Bändern'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Face Pulls mit Kurzhanteln'), (SELECT id FROM muscle WHERE name = 'Deltamuskel'));

-- Ausfallschritte

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Gewichtete Ausfallschritte'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Rückwärtige Ausfallschritte'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Seitliche Ausfallschritte'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));

INSERT INTO exercise_muscle (exercise_id, muscle_id) VALUES 
((SELECT id FROM exercise WHERE name = 'Ausfallschritte mit Sprung'), (SELECT id FROM muscle WHERE name = 'Quadrizeps'));
