-- appointments:
--         appointment_id (Primary Key, Auto-Incremented)
--         patient_id (Foreign Key referencing patients.patient_id)
--         doctor_id (Foreign Key referencing doctors.doctor_id)
--         appointment_date (DATE)
--         status (VARCHAR, Check Constraint to ensure values like "Scheduled", "Completed", or "Canceled")
create table
    appointments (
        appointment_id serial primary key,
        patient_id int,
        doctor_id int,
        appointment_date date,
        status varchar check (
            lower(status) in ('scheduled', 'completed', 'canceled')
        ),
        constraint fk_patient_id foreign key (patient_id) patients (patient_id),
        constraint fk_doctor_id foreign key (doctor_id) doctors (doctor_id)
    );

insert into
    appointments (patient_id, doctor_id, appointment_date, status)
values
    (1, 1, '2025-01-03', 'scheduled'),
    (2, 2, '2024-12-15', 'completed'),
    (1, 3, '2025-02-01', 'canceled');