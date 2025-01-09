-- students:
--     student_id (Primary Key, Auto-Incremented)
--     name (VARCHAR, Not Null)
--     email (VARCHAR, Unique, Not Null)
--     date_of_birth (DATE)

create table
    students (
        student_id serial primary key,
        name varchar not null,
        email varchar unique not null,
        date_of_birth date
    );

insert into
    students (name, email, date_of_birth)
values
    ('Peter', 'peter@gmail.com', '2000-04-23'),
    ('Sam', 'sam@gmail.com', '1999-05-16'),
    ('Mohan', 'mohan@gmail.com', '1999-12-06');