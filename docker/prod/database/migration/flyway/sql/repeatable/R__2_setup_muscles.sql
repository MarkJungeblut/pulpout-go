-- Armmuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Bizeps', 'Musculus biceps brachii', (SELECT id FROM muscle_group WHERE name = 'Armmuskeln'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Trizeps', 'Musculus triceps brachii', (SELECT id FROM muscle_group WHERE name = 'Armmuskeln'));

-- Beinmuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Quadrizeps', 'Musculus quadriceps femoris', (SELECT id FROM muscle_group WHERE name = 'Beinmuskeln'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Wadenmuskeln', 'Musculi surae', (SELECT id FROM muscle_group WHERE name = 'Beinmuskeln'));

-- Brustmuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Großer Brustmuskel', 'Musculus pectoralis major', (SELECT id FROM muscle_group WHERE name = 'Brustmuskeln'));

-- Rückenmuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Latissimus', 'Musculus latissimus dorsi', (SELECT id FROM muscle_group WHERE name = 'Rückenmuskeln'));
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Trapezmuskel', 'Musculus trapezius', (SELECT id FROM muscle_group WHERE name = 'Rückenmuskeln'));

-- Bauchmuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Gerader Bauchmuskel', 'Musculus rectus abdominis', (SELECT id FROM muscle_group WHERE name = 'Bauchmuskeln'));

-- Schultermuskeln
INSERT INTO muscle (name, name_latin, muscle_group_id) VALUES ('Deltamuskel', 'Musculus deltoideus', (SELECT id FROM muscle_group WHERE name = 'Schultermuskeln'));
