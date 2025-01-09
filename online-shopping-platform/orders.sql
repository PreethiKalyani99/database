--  orders:
--         order_id (Primary Key, Auto-Incremented)
--         customer_id (Foreign Key referencing customers.customer_id)
--         order_date (DATE)
--         total_amount (DECIMAL)

create table
    orders (
        order_id serial primary key,
        customer_id int,
        order_date date,
        total_amount decimal,
        constraint fk_customer_id foreign key (customer_id) customers (customer_id)
    );

insert into
    orders (customer_id, order_date, total_amount)
values
    (1, '2025-01-05', 35000),
    (2, '2025-01-02', 30000),
    (3, '2024-12-23' 25000);