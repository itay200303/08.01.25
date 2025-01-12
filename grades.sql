CREATE TABLE grades(
course_students_id INTEGER PRIMARY KEY AUTOINCREMENT,
course_id INTEGER NOT NULL,
student_id INTEGER NOT NULL,
grade INTEGER NOT NULL,
UNIQUE(course_id, student_id)
FOREIGN KEY(course_id) REFERENCES course(course_id)
FOREIGN KEY(student_id) REFERENCES students(student_id)
);