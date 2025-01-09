-- products:
--         product_id (Primary Key, Auto-Incremented)
--         name (VARCHAR, Not Null)
--         price (DECIMAL, Not Null)
--         stock_quantity (INT)
create table
    products (
        product_id serial primary key,
        name varchar not null,
        price decimal not null,
        stock_quantity int
    );

insert into
    products (name, price, stock_quantity)
values
    ('TV', 25000, 3),
    ('Grinder', 5000, 4),
    ('AC', 30000, 4);