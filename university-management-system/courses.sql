-- courses:
--     course_id (Primary Key, Auto-Incremented)
--     name (VARCHAR, Not Null)
--     credits (INT, Not Null)

create table
    courses (
        course_id serial primary key,
        name varchar not null,
        credits int not null
    );

insert into
    courses (name, credits)
values
    ('CSE', 70),
    ('EEE', 50),
    ('ECE', 60);