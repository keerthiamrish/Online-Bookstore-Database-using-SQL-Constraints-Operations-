create database online_bookstore;
use online_bookstore;
-- Create Books table with Primary Key
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookName VARCHAR(100),
    ISBN VARCHAR(20)
);

-- Create Orders table with Foreign Key
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    BookID INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

ALTER TABLE Books
ADD CONSTRAINT unique_isbn UNIQUE (ISBN);

DELETE FROM Orders
WHERE OrderID = 101;

TRUNCATE TABLE Orders;