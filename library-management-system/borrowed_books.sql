-- borrowed_books:
--     id (Primary Key, Auto-Incremented)
--     book_id (Foreign Key referencing books.book_id)
--     borrower_id (Foreign Key referencing borrowers.borrower_id)
--     borrow_date (DATE)
--     return_date (DATE)

create table
    borrowed_books (
        id serial primary key,
        book_id int,
        borrower_id int,
        borrow_date date,
        return_date date,
        constraint fk_book_id foreign key (book_id) books (book_id)
    );

insert into
    borrowed_books (book_id, borrower_id, borrow_date, return_date)
values
    (1, 1, '2025-01-01', '2025-02-05'),
    (3, 2, '2024-12-01', '2024-12-21');