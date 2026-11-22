CREATE TABLE IF NOT EXISTS Syllabus (
    syllabus_id UUID PRIMARY KEY DEFAULT,
    syllabus_title VARCHAR(250) NOT NULL,
    syllabus_link TEXT,
    syllabus_year SMALLSERIAL NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS Course (
    course_id UUID DEFAULT,
    syllabi_link REFERENCES Syllabus(syllabus_link),
    course_registration_number SMALLSERIAL PRIMARY KEY,
    course_Name VARCHAR(250) NOT NULL, 
    course_sections INTEGER NOT NULL,
    season VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS Faculty ( 
    faculty_id UUID DEFAULT,
    faculty_number SMALLSERIAL PRIMARY KEY, 
    faculty_name VARCHAR(250) NOT NULL,
    date_of_birth DATE NOT NULL
);

