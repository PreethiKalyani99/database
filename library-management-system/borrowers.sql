--  borrowers:
--         borrower_id (Primary Key, Auto-Incremented)
--         name (VARCHAR, Not Null)
--         phone (VARCHAR, Unique)

create table
    borrowers (borrower_id serial primary key, name varchar not null, phone varchar unique);

insert into
    borrowers (name, phone)
values
    ('Jim', 1234567890),
    ('Peter', 6754327819),
    ('David', 2364758912);