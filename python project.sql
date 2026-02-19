CREATE DATABASE library_db;
USE library_db;
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author VARCHAR(100),
    quantity INT
);
CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE issue_books (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);
INSERT INTO books (title, author, quantity)
VALUES ('Python Basics', 'John Smith', 10);
INSERT INTO issue_books (book_id, member_id, issue_date)
VALUES (1, 1, CURDATE());
UPDATE issue_books
SET return_date = CURDATE()
WHERE issue_id = 1;



