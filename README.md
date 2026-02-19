## library-management-system-
#A Library Management System built using Python and MySQL in Jupyter Notebook to demonstrate database connectivity, CRUD operations, and structured programming concepts.
##Project Overview
#This project automates basic library operations such as:
-Adding books
-Viewing book records
-Registering members
-Viewing member details
-Issuing books (with quantity validation)
##Technologies Used
-Python
-MySQL
-Jupyter Notebook
##Concepts Demonstrated
-Database Connectivity
-SQL Queries (CREATE, INSERT, SELECT, UPDATE)
-CRUD Operations
-Exception Handling
-Structured Programming
-Business Logic Implementation
##Setup Instructions
Install Required Package
Run in Jupyter Notebook:
!pip install mysql-connector-python
Create Database
Run the following SQL commands in MySQL:
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
Configure MySQL Credentials
Update your MySQL password inside the connection function:
mysql.connector.connect(
    host='localhost',
    user='root',
    password='your_password',
    database='library_db'
)
##How to Run
-Open the Jupyter Notebook file.
-Run cells sequentially.
-Use the defined functions:
add_book("Python Basics", "John Smith", 5)
view_books()
add_member("Lakshmi", "lakshmi@gmail.com")
issue_book(1)
##Features Implemented
-Add Book
-View Books
-Add Member
-View Members
-Issue Book (checks availability before issuing)
##Future Enhancements
-Return Book functionality
-Fine calculation
-Due date tracking
-Search by book title
-Convert into Flask web application
-Add GUI using Tkinter
##Learning Outcomes
This project helped in understanding:
-How Python interacts with relational databases
-Writing and executing SQL queries from Python
-Implementing real-world system logic
-Managing structured data efficiently


