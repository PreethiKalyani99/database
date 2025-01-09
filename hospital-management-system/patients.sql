--  patients:
--         patient_id (Primary Key, Auto-Incremented)
--         name (VARCHAR, Not Null)
--         date_of_birth (DATE)
--         phone (VARCHAR, Unique)
create table
    patients (
        patient_id serial primary key,
        name varchar not null,
        date_of_birth date,
        phone varchar(10) unique
    );

insert into
    (name, date_of_birth, phone)
values
    ('Ram', '1987', 1234556789),
    ('Sheela', 1994, 4356272732);