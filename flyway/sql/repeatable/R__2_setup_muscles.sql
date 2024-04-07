-- Armmuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Bizeps', 'Musculus biceps brachii', (SELECT id FROM muscle_group WHERE name = 'Arme'));
-- Seitlich am Bizeps
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Oberarmmuskel', 'Musculus brachialis', (SELECT id FROM muscle_group WHERE name = 'Arme'));
-- Unterarm
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Oberarmspeichenmuskel', 'Musculus brachioradialis', (SELECT id FROM muscle_group WHERE name = 'Arme'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Trizeps', 'Musculus triceps brachii', (SELECT id FROM muscle_group WHERE name = 'Arme'));

-- Beinmuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Quadrizeps', 'Musculus quadriceps femoris', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Schneidermuskel', 'Musculus sartorius', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Schollenmuskel', 'Musculus soleus', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Lateraler Oberschenkelmuskel', 'Musculus vastus lateralis', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Medialer Oberschenkelmuskel', 'Musculus vastus medialis', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Oberschenkelbindenspanner', 'Musculus tensor fasciae latae', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Bizepsmuskel des Oberschenkels', 'Musculus biceps femoris', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Wadenmuskeln', 'Musculus gastrocnemius', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Schlankmuskel', 'Musculus gracilis', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Großer Gesäßmuskel', 'Musculus gluteus maximus', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Mittlerer Gesäßmuskel', 'Musculus gluteus medius', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Adduktorengruppe', 'Musculi adductores', (SELECT id FROM muscle_group WHERE name = 'Beine'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Abduktorengruppe', 'Musculi abductores', (SELECT id FROM muscle_group WHERE name = 'Beine'));

-- Brustmuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Großer Brustmuskel', 'Musculus pectoralis major', (SELECT id FROM muscle_group WHERE name = 'Brust'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Vorderer Sägemuskel', 'Musculus serratus anterior', (SELECT id FROM muscle_group WHERE name = 'Brust'));

-- Rückenmuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Latissimus', 'Musculus latissimus dorsi', (SELECT id FROM muscle_group WHERE name = 'Rücken'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Trapezmuskel', 'Musculus trapezius', (SELECT id FROM muscle_group WHERE name = 'Rücken'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Rückenstrecker', 'Musculi erector spinae', (SELECT id FROM muscle_group WHERE name = 'Rücken'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Großer Rautenmuskel', 'Musculus rhomboideus major', (SELECT id FROM muscle_group WHERE name = 'Rücken'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Kleiner Rautenmuskel', 'Musculus rhomboideus minor', (SELECT id FROM muscle_group WHERE name = 'Rücken'));

-- Bauchmuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Gerader Bauchmuskel', 'Musculus rectus abdominis', (SELECT id FROM muscle_group WHERE name = 'Bauch'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Schräger äußerer Bauchmuskel', 'Musculus obliquus externus abdominis', (SELECT id FROM muscle_group WHERE name = 'Bauch'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Schräger innerer Bauchmuskel', 'Musculus obliquus internus abdominis', (SELECT id FROM muscle_group WHERE name = 'Bauch'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Querer Bauchmuskel', 'Musculus transversus abdominis', (SELECT id FROM muscle_group WHERE name = 'Bauch'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Pyramidenmuskel', 'Musculus pyramidalis', (SELECT id FROM muscle_group WHERE name = 'Bauch'));

-- Schultermuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Deltamuskel', 'Musculus deltoideus', (SELECT id FROM muscle_group WHERE name = 'Schulter'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Obergrätenmuskel', 'Musculus supraspinatus', (SELECT id FROM muscle_group WHERE name = 'Schulter'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Untergrätenmuskel', 'Musculus infraspinatus', (SELECT id FROM muscle_group WHERE name = 'Schulter'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Kleiner Rundmuskel', 'Musculus teres minor', (SELECT id FROM muscle_group WHERE name = 'Schulter'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Großer Rundmuskel', 'Musculus teres major', (SELECT id FROM muscle_group WHERE name = 'Schulter'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Unterschulterblattmuskel', 'Musculus subscapularis', (SELECT id FROM muscle_group WHERE name = 'Schulter'));
