-- Bankdrücken
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Standard Bankdrücken', 'Klassisches Bankdrücken mit der Langhantel auf einer flachen Bank.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Schrägbankdrücken', 'Bankdrücken auf einer schräg gestellten Bank, um den oberen Teil der Brustmuskulatur stärker zu beanspruchen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Schrägbankdrücken mit Kurzhantel', 'Bankdrücken auf einer schräg gestellten Bank, um den oberen Teil der Brustmuskulatur stärker zu beanspruchen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Negativ Bankdrücken', 'Bankdrücken auf einer abfallenden Bank, um den unteren Teil der Brustmuskulatur mehr zu fordern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Kurzhantel Bankdrücken', 'Bankdrücken mit Kurzhanteln für eine größere Bewegungsfreiheit und zur Stärkung der Brustmuskulatur.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Maschinen Bankdrücken', 'Bankdrücken an einer speziellen Maschine, welche eine geführte Bewegung ermöglicht.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Explosives Bankdrücken', 'Bankdrücken mit dem Fokus auf eine explosive Bewegungsausführung zur Steigerung der Kraft.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Einarmiges Bankdrücken', 'Bankdrücken mit einer Kurzhantel auf einer flachen Bank, ausgeführt mit nur einem Arm zur Verbesserung der Muskelbalance und Koordination.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken'));

-- Standard Bankdrücken (verwendet Langhantel)
INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Standard Bankdrücken')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Schrägbankdrücken')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Negativ Bankdrücken')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Explosives Bankdrücken')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Schrägbankdrücken mit Kurzhantel')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Kurzhantel Bankdrücken')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Einarmiges Bankdrücken'));

-- Liegestütz
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Klassische Liegestütze', 'Standardausführung der Liegestütze mit geradem Rücken und Händen schulterbreit auseinander.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Liegestütze')),
('Enge Liegestütze', 'Liegestütze mit eng zusammenliegenden Händen, um mehr die Trizeps zu fokussieren.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Liegestütze')),
('Breite Liegestütze', 'Liegestütze mit einer breiteren Handposition, um mehr die Brustmuskulatur zu beanspruchen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Liegestütze')),
('Liegestütze mit erhöhten Beinen', 'Liegestütze mit auf einer Erhöhung gelagerten Füßen, um die Belastung zu erhöhen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Liegestütze')),
('Liegestütze mit Klatschen', 'Explosive Liegestütze, bei denen in der Aufwärtsbewegung geklatscht wird.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Liegestütze')),
('Diamanten-Liegestütze', 'Liegestütze, bei denen die Hände so positioniert sind, dass die Daumen und Zeigefinger ein Diamantmuster bilden.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Liegestütze')),
('Liegestütze auf den Fingern', 'Fortgeschrittene Variante der Liegestütze, die auf den Fingerspitzen ausgeführt wird, um die Handgelenke und Unterarmmuskulatur stärker zu beanspruchen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Liegestütze'));


-- Kniebeugen
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Klassische Kniebeugen', 'Die Standardausführung der Kniebeugen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Klassische Kniebeugen mit Langhantel', 'Die Standardausführung der Kniebeugen mit einer Langhantel auf den Schultern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Frontkniebeugen', 'Eine Variante der Kniebeugen, bei der die Langhantel vor dem Körper auf den Schultern liegt.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Sumo-Kniebeugen', 'Kniebeugen mit einer breiteren Standposition und Zehen, die nach außen zeigen, um die Adduktoren und den inneren Teil der Oberschenkel zu betonen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Overhead-Kniebeugen', 'Kniebeugen, bei denen die Langhantel über dem Kopf gehalten wird. Dies erfordert eine beträchtliche Schulterbeweglichkeit und Rumpfstabilität.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Goblet-Kniebeugen', 'Kniebeugen mit einer einzelnen Kurzhantel oder Kettlebell, die vor der Brust gehalten wird.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Split-Kniebeugen', 'Eine einbeinige Kniebeugenvariante, bei der das hintere Bein auf einer Erhöhung abgelegt wird.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Split-Kniebeugen mit Kurzhantel', 'Eine einbeinige Kniebeugenvariante, bei der das hintere Bein auf einer Erhöhung abgelegt wird.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen'));

INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Klassische Kniebeugen mit Langhantel')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Frontkniebeugen')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Sumo-Kniebeugen')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Overhead-Kniebeugen')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Split-Kniebeugen')),
((SELECT id FROM equipment WHERE name = 'Kettlebell'), (SELECT id FROM exercise WHERE name = 'Goblet-Kniebeugen')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Split-Kniebeugen mit Kurzhantel'));

-- Kreuzheben
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Klassisches Kreuzheben', 'Das traditionelle Kreuzheben mit der Langhantel, bei dem die Hantel vom Boden bis zur Hüfthöhe gehoben wird.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Sumo-Kreuzheben', 'Eine Variante des Kreuzhebens mit breiterem Stand und der Hantel näher an den Körper gebracht, was die Belastung mehr auf die Beininnenseiten und Gesäßmuskeln legt.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Rumänisches Kreuzheben', 'Fokus auf die Streckung der Hüfte mit fast gestreckten Knien, um die Hamstrings und den unteren Rücken stärker zu beanspruchen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Defizit-Kreuzheben', 'Kreuzheben auf einer erhöhten Plattform, um den Bewegungsumfang zu erhöhen und die Schwierigkeit zu steigern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Kreuzheben mit gestreckten Beinen', 'Eine Kreuzheben-Variante, bei der die Beine während der Ausführung fast vollständig gestreckt bleiben, was die Belastung auf die Rückseite der Oberschenkel legt.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Einbeiniges Kreuzheben', 'Kreuzheben auf einem Bein ausgeführt, um die Balance und die einseitige Muskelstärke zu fördern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben'));
('Einbeiniges Kreuzheben mit Kurzhantel', 'Kreuzheben auf einem Bein ausgeführt, um die Balance und die einseitige Muskelstärke zu fördern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben'));

INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Klassisches Kreuzheben')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Sumo-Kreuzheben')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Rumänisches Kreuzheben')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Defizit-Kreuzheben')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Kreuzheben mit gestreckten Beinen')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Einbeiniges Kreuzheben')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Einbeiniges Kreuzheben mit Kurzhantel'));


-- Schulterdrücken
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Militärpresse', 'Stehendes Schulterdrücken mit einer Langhantel aus der Front.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Schulterdrücken')),
('Dumbbell Shoulder Press', 'Schulterdrücken mit Kurzhanteln für eine isolierte Arbeit der Schultermuskulatur.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Schulterdrücken')),
('Arnold Press', 'Eine Variante des Schulterdrückens mit Kurzhanteln, benannt nach Arnold Schwarzenegger.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Schulterdrücken')),
('Seated Barbell Press', 'Sitzendes Schulterdrücken mit einer Langhantel.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Schulterdrücken')),
('Seated Dumbbell Press', 'Sitzendes Schulterdrücken mit Kurzhanteln.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Schulterdrücken'));

-- Militärpresse (verwendet Langhantel)
INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Militärpresse')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Seated Barbell Press')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Dumbbell Shoulder Press')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Arnold Press')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Seated Dumbbell Press'));

-- Bizepscurls
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Kurzhantel-Curls', 'Bizepscurls mit Kurzhantel für gleichmäßigen Widerstand.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls')),
('Langhantel-Curls', 'Bizepscurls mit einer Langhantel für gleichmäßigen Widerstand.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls')),
('Hammer Curls', 'Bizepscurls mit Kurzhanteln und einem neutralen Griff.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls')),
('Concentration Curls', 'Bizepscurls mit Fokus auf die Spitzenkontraktion, einzeln ausgeführt.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls')),
('Preacher Curls', 'Bizepscurls an einer Preacher-Bank für eine isolierte Ausführung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls')),
('Preacher Curls mit Kurzhantel', 'Bizepscurls an einer Preacher-Bank für eine isolierte Ausführung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls')),
('Cable Bicep Curls', 'Bizepscurls am Kabelzug für kontinuierlichen Widerstand.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls'));

INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Kurzhantel-Curls')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Langhantel-Curls')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Hammer Curls')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Concentration Curls')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Preacher Curls')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Preacher Curls mit Kurzhantel'));

-- Trizepsdrücken
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('French Press mit Langhantel', 'Trizepsdrücken über dem Kopf mit einer Langhantel.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken')),
('French Press mit Kurzhantel', 'Trizepsdrücken über dem Kopf mit einer Kurzhantel.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken')),
('Triceps Dips', 'Dips an Parallelstangen zur Stärkung der Trizepsmuskulatur.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken')),
('Cable Triceps Pushdown', 'Trizepsdrücken am Kabelzug.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken')),
('Overhead Triceps Extension', 'Überkopf-Trizepsstreckung mit einer Hantel.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken')),
('Skull Crushers', 'Liegestütze mit einer Langhantel zur Trizepsstreckung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken'));

INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'French Press mit Langhantel')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'French Press mit Kurzhantel')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Overhead Triceps Extension')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Skull Crushers'));

-- Rudern
-- TODO: Add missing equipment and relations. It's important to have Metrics about which exercise has no equipment assigned!
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Barbell Rows', 'Rudern mit einer Langhantel in vorgebeugter Position.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Rudern')),
('Dumbbell Rows', 'Einarmiges Rudern mit einer Kurzhantel.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Rudern')),
('T-Bar Rows', 'Rudern mit der T-Bar für einen fokussierten Rückenzug.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Rudern')),
('Seated Cable Rows', 'Rudern im Sitzen am Kabelzug.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Rudern')),
('Machine Rows', 'Rudern an einer speziellen Rudermaschine.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Rudern'));

-- Barbell Rows (verwendet Langhantel)
INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Barbell Rows')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Dumbbell Rows'));

-- Latziehen
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Lat Pulldown', 'Ziehen einer Stange zur Brust im Sitzen an einer Kabelzugmaschine.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Latziehen')),
('Wide-Grip Lat Pulldown', 'Latziehen mit einem breiten Griff.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Latziehen')),
('Close-Grip Lat Pulldown', 'Latziehen mit einem engen Griff.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Latziehen')),
('Reverse-Grip Lat Pulldown', 'Latziehen mit einem umgekehrten Griff.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Latziehen')),
('V-Bar Lat Pulldown', 'Latziehen mit einer V-förmigen Stange.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Latziehen'));

-- Lat Pulldown
INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Kabelzugmaschine'), (SELECT id FROM exercise WHERE name = 'Lat Pulldown')),
((SELECT id FROM equipment WHERE name = 'Kabelzugmaschine'), (SELECT id FROM exercise WHERE name = 'Wide-Grip Lat Pulldown')),
((SELECT id FROM equipment WHERE name = 'Kabelzugmaschine'), (SELECT id FROM exercise WHERE name = 'Close-Grip Lat Pulldown')),
((SELECT id FROM equipment WHERE name = 'Kabelzugmaschine'), (SELECT id FROM exercise WHERE name = 'Reverse-Grip Lat Pulldown')),
((SELECT id FROM equipment WHERE name = 'Kabelzugmaschine'), (SELECT id FROM exercise WHERE name = 'V-Bar Lat Pulldown'));

-- Beinpresse
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Beinpresse mit engem Stand', 'Beinpresse an der Maschine mit enger Fußstellung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Beinpresse')),
('Beinpresse mit weitem Stand', 'Beinpresse an der Maschine mit breiter Fußstellung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Beinpresse')),
('Einzeln Beinpresse', 'Beinpresse mit einem Bein für fokussierte Kraftentwicklung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Beinpresse')),
('Beinpresse mit hoher Fußstellung', 'Beinpresse an der Maschine mit hoher Fußstellung zur stärkeren Aktivierung der Hamstrings.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Beinpresse')),
('Beinpresse mit niedriger Fußstellung', 'Beinpresse an der Maschine mit niedriger Fußstellung zur stärkeren Aktivierung der Quadrizeps.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Beinpresse'));

INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Beinpresse'), (SELECT id FROM exercise WHERE name = 'Beinpresse mit engem Stand')),
((SELECT id FROM equipment WHERE name = 'Beinpresse'), (SELECT id FROM exercise WHERE name = 'Beinpresse mit weitem Stand')),
((SELECT id FROM equipment WHERE name = 'Beinpresse'), (SELECT id FROM exercise WHERE name = 'Einzeln Beinpresse')),
((SELECT id FROM equipment WHERE name = 'Beinpresse'), (SELECT id FROM exercise WHERE name = 'Beinpresse mit hoher Fußstellung')),
((SELECT id FROM equipment WHERE name = 'Beinpresse'), (SELECT id FROM exercise WHERE name = 'Beinpresse mit niedriger Fußstellung'));

-- Wadenheben
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Wadenheben an der Maschine', 'Wadenheben im Stehen an einer speziellen Maschine.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Wadenheben')),
('Sitzendes Wadenheben', 'Wadenheben im Sitzen, um die Unterschenkelmuskulatur zu isolieren.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Wadenheben')),
('Wadenheben an der Beinpresse', 'Ausführung von Wadenheben an einer Beinpresse.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Wadenheben')),
('Einbeiniges Wadenheben', 'Wadenheben auf einem Bein für isolierte Muskelarbeit.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Wadenheben')),
('Barbell Calf Raise', 'Wadenheben mit einer Langhantel auf den Schultern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Wadenheben'));

INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Beinpresse'), (SELECT id FROM exercise WHERE name = 'Wadenheben am Beinpresse')),
((SELECT id FROM equipment WHERE name = 'Langhantel'), (SELECT id FROM exercise WHERE name = 'Barbell Calf Raise'));

-- Seitheben
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Seitheben mit Kurzhanteln', 'Heben von Kurzhanteln seitlich weg vom Körper.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Seitheben')),
('Seitheben am Kabelzug', 'Seitheben mit einem Kabelzug für konstante Spannung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Seitheben')),
('Seitheben an der Maschine', 'Seitheben an einer speziellen Fitnessmaschine.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Seitheben')),
('Einarmiges Seitheben mit Kurzhantel', 'Seitheben mit einer Kurzhantel, einzeln ausgeführt.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Seitheben')),
('Seitheben im Sitzen', 'Seitheben, ausgeführt in sitzender Position für eine stabilere Haltung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Seitheben'));

-- Seitheben mit Kurzhanteln
INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Seitheben mit Kurzhanteln')),
((SELECT id FROM equipment WHERE name = 'Kabelzugmaschine'), (SELECT id FROM exercise WHERE name = 'Seitheben am Kabelzug')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Einarmiges Seitheben mit Kurzhantel')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Seitheben im Sitzen'));

-- Face Pulls
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Face Pulls am Kabelzug', 'Ziehen eines Seils zum Gesicht, um die hintere Schulterpartie zu trainieren.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Face Pulls')),
('Face Pulls mit Widerstandsband', 'Face Pulls, ausgeführt mit einem Widerstandsband für variable Spannung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Face Pulls')),
('Face Pulls mit TRX-Bändern', 'Ausführung der Face Pulls unter Verwendung von TRX-Bändern zur Stabilisierung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Face Pulls')),
('Face Pulls mit Kurzhanteln', 'Face Pulls, durchgeführt mit Kurzhanteln für isolierte Muskelarbeit.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Face Pulls')),

INSERT INTO equipment_exercise (equipment_id, exercise_id) 
VALUES 
((SELECT id FROM equipment WHERE name = 'Kabelzugmaschine'), (SELECT id FROM exercise WHERE name = 'Face Pulls am Kabelzug')),
((SELECT id FROM equipment WHERE name = 'Fitnessband'), (SELECT id FROM exercise WHERE name = 'Face Pulls mit Widerstandsband')),
((SELECT id FROM equipment WHERE name = 'TRX-Bänder'), (SELECT id FROM exercise WHERE name = 'Face Pulls mit TRX-Bändern')),
((SELECT id FROM equipment WHERE name = 'Kurzhantel'), (SELECT id FROM exercise WHERE name = 'Face Pulls mit Kurzhanteln'));

-- Ausfallschritte
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Gewichtete Ausfallschritte', 'Vorwärtsschritte mit Gewichten zur Steigerung des Widerstands.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Ausfallschritte')),
('Rückwärtige Ausfallschritte', 'Ausfallschritte rückwärts, um den Fokus auf andere Muskelgruppen zu legen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Ausfallschritte')),
('Seitliche Ausfallschritte', 'Ausführung der Ausfallschritte zur Seite, um die seitliche Oberschenkelmuskulatur zu beanspruchen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Ausfallschritte')),
('Ausfallschritte mit Sprung', 'Dynamische Ausfallschritte mit einem Sprung zwischen den Wechseln der Beine.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Ausfallschritte'));