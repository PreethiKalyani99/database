--  employees:
--         employee_id (Primary Key, Auto-Incremented)
--         name (VARCHAR, Not Null)
--         email (VARCHAR, Unique, Not Null)
--         department_id (Foreign Key referencing departments.department_id)

create table
    employees (
        employee_id serial primary key,
        name varchar not null,
        email varchar unique not null,
        department_id int,
        constraint fk_department_id foreign key (department_id) departments (department_id)
    );

insert into
    employees (name, email, department_id)
values
    ('John', 'john@gmail.com', 1),
    ('Peter', 'peter@gmail.com', 2),
    ('Sam', 'sam@gmail.com', 3);