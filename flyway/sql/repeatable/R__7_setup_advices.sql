INSERT INTO advice (name, exercise_id) VALUES
('Lasse die Stange leicht oberhalb der Brust ab.', (SELECT id FROM exercise WHERE name = 'Standard Bankdrücken')),
('Einatmen beim Ablassen der Langhantel. Ausatmen beim Hochdrücken der Langhantel.', (SELECT id FROM exercise WHERE name = 'Standard Bankdrücken')),
('Achte auf den Winkel zwischen Ellenbogen und Oberkörper. Empfohlen wird ein Winkel zwischen 45 und 60 Grad.', (SELECT id FROM exercise WHERE name = 'Standard Bankdrücken'));