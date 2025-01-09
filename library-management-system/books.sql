--  books:
--         book_id (Primary Key, Auto-Incremented)
--         title (VARCHAR, Not Null)
--         author_id (Foreign Key referencing authors.author_id)
--         published_year (YEAR)


create table
    books (book_id serial primary key, title varchar not null, author_id int, published_year int, constraint fk_author_id foreign key (author_id) authors(author_id));

insert into
    books (author_id, title, published_year)
values
    (1, 'Atomic Habbits', 1998),
    (2, 'Ponniyin Selvan', 1954),
    (3, 'Who moved my Cheese?', 2017);