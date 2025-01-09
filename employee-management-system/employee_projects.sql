--  employee_projects:
--         id (Primary Key, Auto-Incremented)
--         employee_id (Foreign Key referencing employees.employee_id)
--         project_id (Foreign Key referencing projects.project_id)

create table
    employee_projects (
        id serial primary key,
        employee_id int,
        project_id int,
        constraint fk_emp_id foreign key (employee_id) employees (employee_id),
        constraint fk_project_id foreign key (project_id) projects (project_id)
    );

insert into
    employee_projects (employee_id, project_id)
values
    (1, 1),
    (2, 1),
    (3, 2);