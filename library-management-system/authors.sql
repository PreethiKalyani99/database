--  authors:
-- author_id (Primary Key, Auto-Incremented)
-- name (VARCHAR, Not Null)
-- country (VARCHAR)

create table
    authors (author_id serial primary key, name varchar not null, country varchar);

insert into
    authors (name, country)
values
    ('James Clear', 'US'),
    ('Kalki', 'India'),
    ('Spencer Johnson', 'US');