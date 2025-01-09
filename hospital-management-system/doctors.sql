--  doctors:
--         doctor_id (Primary Key, Auto-Incremented)
--         name (VARCHAR, Not Null)
--         specialization (VARCHAR, Not Null)

create table
    doctors (
        doctor_id serial primary key,
        name varchar not null,
        specialization varchar not null
    );

insert into
    doctors (name, specialization)
values
    ('Mr.A', 'Cardiologist'),
    ('Mr.B', 'Dermatologist'),
    ('Mr.C', 'Neurologist');