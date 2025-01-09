-- enrollments:
--         id (Primary Key, Auto-Incremented)
--         student_id (Foreign Key referencing students.student_id)
--         course_id (Foreign Key referencing courses.course_id)
--         enrollment_date (DATE)

create table
    enrollments (
        id serial primary key,
        student_id int,
        course_id int,
        enrollment_date date,
        constraint fk_student_id foreign key (student_id) students (student_id),
        constraint fk_course_id foreign key (course_id) courses (course_id)
    );

insert into
    enrollments (student_id, course_id, enrollment_date)
values
    (1, 1, '2025-01-02'),
    (2, 1, '2025-01-02'),
    (3, 2, '2025-01-05');