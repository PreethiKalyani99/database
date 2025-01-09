-- departments:
--         department_id (Primary Key, Auto-Incremented)
--         name (VARCHAR, Not Null, Unique)

create table
    departments (
        department_id serial primary key,
        name varchar unique not null
    );

insert into
    departments (name)
values
    ('Sales'),
    ('IT'),
    ('Marketing');