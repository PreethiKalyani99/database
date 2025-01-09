--  order_items:
--         id (Primary Key, Auto-Incremented)
--         order_id (Foreign Key referencing orders.order_id)
--         product_id (Foreign Key referencing products.product_id)
--         quantity (INT)
--         item_price (DECIMAL)
create table
    order_items (
        id serial primary key,
        order_id int,
        product_id int,
        quantity int,
        item_price decimal,
        constraint fk_order_id foreign key (order_id) orders (order_id),
        constraint fk_product_id foreign key (product_id) products (product_id)
    );

insert into
    order_items (order_id, product_id, quantity, item_price)
values
    (1, 1, 1, 35000),
    (2, 2, 2, 30000),
    (3, 3, 1, 25000);