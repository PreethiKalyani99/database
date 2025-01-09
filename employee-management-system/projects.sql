--    projects:
--         project_id (Primary Key, Auto-Incremented)
--         name (VARCHAR, Not Null)
--         start_date (DATE)
--         end_date (DATE)

create table
    projects (
        project_id serial primary key,
        name varchar not null,
        start_date date,
        end_date date
    );

insert into
    projects (name, start_date, end_date)
values
    ('aaa', '2025-01-01', '2025-02-02'),
    ('bbb', '2025-02-03', '2025-03-01');