CREATE TABLE IF NOT EXISTS Syllabus (
    pk_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    syllabus_title VARCHAR(250) NOT NULL,
    syllabus_link TEXT UNIQUE,
    syllabus_year INTEGER NOT NULL CHECK (syllabus_year > 0),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS Course (
    pk_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    syllabi_link TEXT REFERENCES Syllabus(syllabus_link),
    course_registration_number INTEGER NOT NULL UNIQUE CHECK (course_registration_number > 0),
    course_name VARCHAR(250) NOT NULL, 
    course_sections INTEGER UNIQUE NOT NULL,
    season VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS "Section" (
    pk_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    course_sections INTEGER UNIQUE NOT NULL REFERENCES Course(course_sections)
);

CREATE TABLE IF NOT EXISTS Faculty ( 
    pk_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    faculty_number INTEGER NOT NULL UNIQUE CHECK (faculty_number > 0), 
    faculty_name VARCHAR(250) NOT NULL,
    date_of_birth DATE NOT NULL
);

