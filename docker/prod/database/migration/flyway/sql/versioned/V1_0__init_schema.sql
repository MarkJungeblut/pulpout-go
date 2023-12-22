CREATE TABLE muscle_group (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    name_latin VARCHAR(255) NOT NULL
);

CREATE TABLE muscle (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    name_latin VARCHAR(255) NOT NULL,
    muscle_group_id SERIAL NOT NULL,
    CONSTRAINT fk_muscle_muscle_group FOREIGN KEY (muscle_group_id) REFERENCES muscle_group(id)
);

CREATE TABLE equipment (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE equipment_exercise (
    id SERIAL PRIMARY KEY,
    equipment_id SERIAL NOT NULL,
    exercise_id SERIAL NOT NULL,
    CONSTRAINT fk_equipment_exercise_equipment FOREIGN KEY (equipment_id) REFERENCES equipment(id),
    CONSTRAINT fk_equipment_exercise_exercise FOREIGN KEY (exercise_id) REFERENCES exercise(id),
)

CREATE TABLE exercise_group (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

CREATE TABLE exercise (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    exercise_group_id SERIAL NOT NULL,
    CONSTRAINT fk_exercise_exercise_group FOREIGN KEY (exercise_group_id) REFERENCES exercise_group(id),
);

CREATE TABLE exercise();
CREATE TABLE exercise_variation();
CREATE TABLE muscle_group();
CREATE TABLE muscle();
CREATE TABLE equipment();

