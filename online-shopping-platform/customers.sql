--  customers:
--         customer_id (Primary Key, Auto-Incremented)
--         name (VARCHAR, Not Null)
--         email (VARCHAR, Unique, Not Null)
--         phone (VARCHAR, Unique)

create table
    customers (
        customer_id serial primary key,
        name varchar not null,
        email varchar unique not null,
        phone varchar(10) unique
    );

insert into
    customers (name, email, phone)
values
    ('Jim', 'jim@gmail.com', 1234567890),
    ('John', 'john@gmail.com', 4532345412);