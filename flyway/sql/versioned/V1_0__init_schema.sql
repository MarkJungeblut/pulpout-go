CREATE TABLE muscle_group (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    name_latin VARCHAR(255) NOT NULL,
    UNIQUE(name, name_latin)
);

CREATE TABLE muscle (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    name_latin VARCHAR(255) NOT NULL,
    muscle_group_id SERIAL NOT NULL,
    CONSTRAINT fk_muscle_muscle_group FOREIGN KEY (muscle_group_id) REFERENCES muscle_group(id),
    UNIQUE(name, name_latin)
);

CREATE TABLE equipment (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    UNIQUE(name)
);

CREATE TABLE exercise_group (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    UNIQUE(name)
);

CREATE TABLE exercise (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    exercise_group_id SERIAL NOT NULL,
    CONSTRAINT fk_exercise_exercise_group FOREIGN KEY (exercise_group_id) REFERENCES exercise_group(id),
    UNIQUE (name)
);

CREATE TABLE equipment_exercise (
    id SERIAL PRIMARY KEY,
    equipment_id SERIAL NOT NULL,
    exercise_id SERIAL NOT NULL,
    CONSTRAINT fk_equipment_exercise_equipment FOREIGN KEY (equipment_id) REFERENCES equipment(id),
    CONSTRAINT fk_equipment_exercise_exercise FOREIGN KEY (exercise_id) REFERENCES exercise(id),
    UNIQUE (equipment_id, exercise_id)
);

CREATE TABLE muscle_exercise (
    id SERIAL PRIMARY KEY,
    muscle_id SERIAL NOT NULL,
    exercise_id SERIAL NOT NULL,
    CONSTRAINT fk_muscle_exercise_muscle FOREIGN KEY (muscle_id) REFERENCES muscle(id),
    CONSTRAINT fk_muscle_exercise_exercise FOREIGN KEY (exercise_id) REFERENCES exercise(id),
    UNIQUE (muscle_id, exercise_id)
);