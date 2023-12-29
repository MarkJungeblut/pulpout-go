-- Bankdrücken
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Standard Bankdrücken', 'Klassisches Bankdrücken mit der Langhantel auf einer flachen Bank.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Schrägbankdrücken', 'Bankdrücken auf einer schräg gestellten Bank, um den oberen Teil der Brustmuskulatur stärker zu beanspruchen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Negativ Bankdrücken', 'Bankdrücken auf einer abfallenden Bank, um den unteren Teil der Brustmuskulatur mehr zu fordern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Kurzhantel Bankdrücken', 'Bankdrücken mit Kurzhanteln für eine größere Bewegungsfreiheit und zur Stärkung der Brustmuskulatur.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Maschinen Bankdrücken', 'Bankdrücken an einer speziellen Maschine, welche eine geführte Bewegung ermöglicht.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Explosives Bankdrücken', 'Bankdrücken mit dem Fokus auf eine explosive Bewegungsausführung zur Steigerung der Kraft.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken')),
('Einarmiges Bankdrücken', 'Bankdrücken mit einer Kurzhantel auf einer flachen Bank, ausgeführt mit nur einem Arm zur Verbesserung der Muskelbalance und Koordination.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bankdrücken'));


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
('Klassische Kniebeugen', 'Die Standardausführung der Kniebeugen mit einer Langhantel auf den Schultern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Frontkniebeugen', 'Eine Variante der Kniebeugen, bei der die Langhantel vor dem Körper auf den Schultern liegt.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Sumo-Kniebeugen', 'Kniebeugen mit einer breiteren Standposition und Zehen, die nach außen zeigen, um die Adduktoren und den inneren Teil der Oberschenkel zu betonen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Overhead-Kniebeugen', 'Kniebeugen, bei denen die Langhantel über dem Kopf gehalten wird. Dies erfordert eine beträchtliche Schulterbeweglichkeit und Rumpfstabilität.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Goblet-Kniebeugen', 'Kniebeugen mit einer einzelnen Kurzhantel oder Kettlebell, die vor der Brust gehalten wird.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen')),
('Split-Kniebeugen', 'Eine einbeinige Kniebeugenvariante, bei der das hintere Bein auf einer Erhöhung abgelegt wird.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kniebeugen'));


-- Kreuzheben
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Klassisches Kreuzheben', 'Das traditionelle Kreuzheben mit der Langhantel, bei dem die Hantel vom Boden bis zur Hüfthöhe gehoben wird.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Sumo-Kreuzheben', 'Eine Variante des Kreuzhebens mit breiterem Stand und der Hantel näher an den Körper gebracht, was die Belastung mehr auf die Beininnenseiten und Gesäßmuskeln legt.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Rumänisches Kreuzheben', 'Fokus auf die Streckung der Hüfte mit fast gestreckten Knien, um die Hamstrings und den unteren Rücken stärker zu beanspruchen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Hex-Bar-Kreuzheben', 'Ausführung des Kreuzhebens mit einer Hex-Bar, die eine neutralere Griffposition und eine andere Gewichtsverteilung ermöglicht.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Defizit-Kreuzheben', 'Kreuzheben auf einer erhöhten Plattform, um den Bewegungsumfang zu erhöhen und die Schwierigkeit zu steigern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Kreuzheben mit gestreckten Beinen', 'Eine Kreuzheben-Variante, bei der die Beine während der Ausführung fast vollständig gestreckt bleiben, was die Belastung auf die Rückseite der Oberschenkel legt.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben')),
('Einbeiniges Kreuzheben', 'Kreuzheben auf einem Bein ausgeführt, um die Balance und die einseitige Muskelstärke zu fördern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Kreuzheben'));

-- Schulterdrücken
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Militärpresse', 'Stehendes Schulterdrücken mit einer Langhantel aus der Front.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Schulterdrücken')),
('Dumbbell Shoulder Press', 'Schulterdrücken mit Kurzhanteln für eine isolierte Arbeit der Schultermuskulatur.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Schulterdrücken')),
('Arnold Press', 'Eine Variante des Schulterdrückens mit Kurzhanteln, benannt nach Arnold Schwarzenegger.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Schulterdrücken')),
('Seated Barbell Press', 'Sitzendes Schulterdrücken mit einer Langhantel.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Schulterdrücken')),
('Seated Dumbbell Press', 'Sitzendes Schulterdrücken mit Kurzhanteln.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Schulterdrücken'));

-- Bizepscurls
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Langhantel-Curls', 'Bizepscurls mit einer Langhantel für gleichmäßigen Widerstand.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls')),
('Hammer Curls', 'Bizepscurls mit Kurzhanteln und einem neutralen Griff.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls')),
('Concentration Curls', 'Bizepscurls mit Fokus auf die Spitzenkontraktion, einzeln ausgeführt.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls')),
('Preacher Curls', 'Bizepscurls an einer Preacher-Bank für eine isolierte Ausführung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls')),
('Cable Bicep Curls', 'Bizepscurls am Kabelzug für kontinuierlichen Widerstand.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Bizepscurls'));

-- Trizepsdrücken
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('French Press', 'Trizepsdrücken über dem Kopf mit einer Lang- oder Kurzhantel.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken')),
('Tricep Dips', 'Dips an Parallelstangen zur Stärkung der Trizepsmuskulatur.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken')),
('Cable Tricep Pushdown', 'Trizepsdrücken am Kabelzug.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken')),
('Overhead Tricep Extension', 'Überkopf-Trizepsstreckung mit einer Hantel.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken')),
('Skull Crushers', 'Liegestütze mit einer Langhantel zur Trizepsstreckung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Trizepsdrücken'));

-- Rudern
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Barbell Rows', 'Rudern mit einer Langhantel in vorgebeugter Position.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Rudern')),
('Dumbbell Rows', 'Einarmiges Rudern mit einer Kurzhantel.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Rudern')),
('T-Bar Rows', 'Rudern mit der T-Bar für einen fokussierten Rückenzug.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Rudern')),
('Seated Cable Rows', 'Rudern im Sitzen am Kabelzug.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Rudern')),
('Machine Rows', 'Rudern an einer speziellen Rudermaschine.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Rudern'));

-- Latziehen
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Lat Pulldown', 'Ziehen einer Stange zur Brust im Sitzen an einer Kabelzugmaschine.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Latziehen')),
('Wide-Grip Lat Pulldown', 'Latziehen mit einem breiten Griff.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Latziehen')),
('Close-Grip Lat Pulldown', 'Latziehen mit einem engen Griff.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Latziehen')),
('Reverse-Grip Lat Pulldown', 'Latziehen mit einem umgekehrten Griff.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Latziehen')),
('V-Bar Lat Pulldown', 'Latziehen mit einer V-förmigen Stange.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Latziehen'));

-- Beinpresse
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Beinpresse mit engem Stand', 'Beinpresse an der Maschine mit enger Fußstellung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Beinpresse')),
('Beinpresse mit weitem Stand', 'Beinpresse an der Maschine mit breiter Fußstellung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Beinpresse')),
('Einzeln Beinpresse', 'Beinpresse mit einem Bein für fokussierte Kraftentwicklung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Beinpresse')),
('Beinpresse mit hoher Fußstellung', 'Beinpresse an der Maschine mit hoher Fußstellung zur stärkeren Aktivierung der Hamstrings.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Beinpresse')),
('Beinpresse mit niedriger Fußstellung', 'Beinpresse an der Maschine mit niedriger Fußstellung zur stärkeren Aktivierung der Quadrizeps.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Beinpresse'));

-- Wadenheben
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Wadenheben an der Maschine', 'Wadenheben im Stehen an einer speziellen Maschine.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Wadenheben')),
('Sitzendes Wadenheben', 'Wadenheben im Sitzen, um die Unterschenkelmuskulatur zu isolieren.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Wadenheben')),
('Wadenheben am Beinpressgerät', 'Ausführung von Wadenheben an einer Beinpresse.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Wadenheben')),
('Einbeiniges Wadenheben', 'Wadenheben auf einem Bein für isolierte Muskelarbeit.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Wadenheben')),
('Barbell Calf Raise', 'Wadenheben mit einer Langhantel auf den Schultern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Wadenheben'));

-- Seitheben
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Seitheben mit Kurzhanteln', 'Heben von Kurzhanteln seitlich weg vom Körper.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Seitheben')),
('Kabelzug-Seitheben', 'Seitheben mit einem Kabelzug für konstante Spannung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Seitheben')),
('Maschinen-Seitheben', 'Seitheben an einer speziellen Fitnessmaschine.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Seitheben')),
('Einarmiges Seitheben mit Kurzhantel', 'Seitheben mit einer Kurzhantel, einzeln ausgeführt.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Seitheben')),
('Seitheben im Sitzen', 'Seitheben, ausgeführt in sitzender Position für eine stabilere Haltung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Seitheben'));


-- Face Pulls
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Face Pulls am Kabelzug', 'Ziehen eines Seils zum Gesicht, um die hintere Schulterpartie zu trainieren.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Face Pulls')),
('Face Pulls mit Widerstandsband', 'Face Pulls, ausgeführt mit einem Widerstandsband für variable Spannung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Face Pulls')),
('Face Pulls mit TRX-Bändern', 'Ausführung der Face Pulls unter Verwendung von TRX-Bändern zur Stabilisierung.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Face Pulls')),
('Face Pulls mit Kurzhanteln', 'Face Pulls, durchgeführt mit Kurzhanteln für isolierte Muskelarbeit.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Face Pulls')),
('Liegender Face Pull', 'Face Pulls im Liegen auf einer Bank, um den Bewegungsbereich zu verändern.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Face Pulls'));


-- Ausfallschritte
INSERT INTO exercise (name, description, created_at, updated_at, exercise_group_id) 
VALUES 
('Gewichtete Ausfallschritte', 'Vorwärtsschritte mit Gewichten zur Steigerung des Widerstands.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Ausfallschritte')),
('Rückwärtige Ausfallschritte', 'Ausfallschritte rückwärts, um den Fokus auf andere Muskelgruppen zu legen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Ausfallschritte')),
('Seitliche Ausfallschritte', 'Ausführung der Ausfallschritte zur Seite, um die seitliche Oberschenkelmuskulatur zu beanspruchen.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Ausfallschritte')),
('Ausfallschritte mit Sprung', 'Dynamische Ausfallschritte mit einem Sprung zwischen den Wechseln der Beine.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM exercise_group WHERE name = 'Ausfallschritte'));