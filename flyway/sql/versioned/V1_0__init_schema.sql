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
    muscle_group_id SERIAL REFERENCES muscle_group(id),
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
    exercise_group_id SERIAL REFERENCES exercise_group(id),
    UNIQUE (name)
);

CREATE TABLE equipment_exercise (
    id SERIAL PRIMARY KEY,
    equipment_id SERIAL REFERENCES equipment(id),
    exercise_id SERIAL REFERENCES exercise(id),
    UNIQUE (equipment_id, exercise_id)
);

CREATE TABLE muscle_exercise (
    id SERIAL PRIMARY KEY,
    muscle_id SERIAL REFERENCES muscle(id),
    exercise_id SERIAL REFERENCES exercise(id),
    UNIQUE (muscle_id, exercise_id)
);

CREATE TABLE workout_type (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    UNIQUE (name)
);

CREATE TABLE exercise_group_workout_type (
    id SERIAL PRIMARY KEY,
    exercise_group_id SERIAL REFERENCES exercise_group(id),
    workout_type_id SERIAL REFERENCES workout_type(id),
    UNIQUE (exercise_group_id, workout_type_id)
);

CREATE TABLE advice (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    exercise_id SERIAL REFERENCES exercise(id)
);

CREATE TABLE workout_schedule (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    notes TEXT
);

CREATE TABLE workout_schedule_exercise (
    id SERIAL PRIMARY KEY,
    workout_schedule_id SERIAL REFERENCES workout_schedule(id),
    exercise_id SERIAL REFERENCES exercise(id),
    UNIQUE (workout_schedule_id, exercise_id)
);

CREATE TABLE workout_schedule_exercise_details (
    id SERIAL PRIMARY KEY,
    weight REAL,
    repititions INT,
    workout_schedule_exercise_id SERIAL REFERENCES workout_schedule_exercise(id)
);