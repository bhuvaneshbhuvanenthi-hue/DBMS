Entities and Attributes: 
• Authors 
o AuthorID (Primary Key) 
o FirstName 
o LastName 
• Books 
o BookID (Primary Key) 
o Title 
o Genre 
o PublicationYear 
• Borrowers 
o BorrowerID (Primary Key) 
o FirstName 
o LastName 
o MembershipDate 
• BookAuthors (Associative entity for the many-to-many relationship between Books and 
Authors) 
o BookID (Foreign Key) 
o AuthorID (Foreign Key) 
• BorrowedBooks (Associative entity for the many-to-many relationship between 
Borrowers and Books) 
o BorrowerID (Foreign Key) 
o BookID (Foreign Key) 
o BorrowedDate 
o ReturnDate 
Relationships: 
• An author can write multiple books (One-to-Many relationship). 
• A book can have multiple authors (One-to-Many relationship).  
16  
• A borrower can borrow multiple books (One-to-Many relationship). 
• A book can be borrowed by multiple borrowers (One-to-Many relationship). 
Step 2: Create the Tables in the RDBMS 
CREATE TABLE Authors ( 
AuthorID INT PRIMARY KEY, 
FirstName VARCHAR(50), 
LastName VARCHAR(50) 
); -- Create Books table 
CREATE TABLE Books ( 
BookID INT PRIMARY KEY, Title VARCHAR(100), 
Genre VARCHAR(50), 
PublicationYear INT 
); -- Create BookAuthors table 
CREATE TABLE BookAuthors ( 
BookID INT, 
AuthorID INT, 
PRIMARY KEY (BookID, AuthorID), 
FOREIGN KEY (BookID) REFERENCES Books(BookID), 
FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID) 
); 
17  
Create Borrowers table 
CREATE TABLE Borrowers ( 
BorrowerID INT PRIMARY KEY, 
FirstName VARCHAR(50), 
LastName VARCHAR(50), 
MembershipDate DATE 
); -- Create BorrowedBooks table 
CREATE TABLE BorrowedBooks ( 
BorrowerID INT, 
BookID INT, 
BorrowedDate DATE, 
ReturnDate DATE, 
PRIMARY KEY (BorrowerID, BookID), 
ACADEMIC YEAR: 2026-2027 
FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID), 
FOREIGN KEY (BookID) REFERENCES Books(BookID) 
); 
Step 3: Populate the Tables with Sample Data -- Insert sample data into Authors 
INSERT INTO Authors (AuthorID, FirstName, LastName) VALUES (1, 
'George', 'Orwell');  
INSERT INTO Authors (AuthorID, FirstName, LastName) VALUES (2, 
'Aldous', 'Huxley');  
INSERT INTO Authors (AuthorID, FirstName, LastName) VALUES (3, 'J.K.', 
'Rowling');  
18  
INSERT INTO Books (BookID, Title, Genre, PublicationYear) VALUES (1, '1984', 'Dystopian', 1949); 
INSERT INTO Books (BookID, Title, Genre, PublicationYear) VALUES (2, 'Brave New 
World', 'Dystopian', 1932); 
INSERT INTO Books (BookID, Title, Genre, PublicationYear) VALUES (3, 'Harry Potter 
and the Sorcerers Stone', 'Fantasy', 1997); -- Insert sample data into BookAuthors 
INSERT INTO BookAuthors (BookID, AuthorID) VALUES (1, 1); 
INSERT INTO BookAuthors (BookID, AuthorID) VALUES (2, 2); 
INSERT INTO BookAuthors (BookID, AuthorID) VALUES (3, 3); -- Insert sample data into Borrowers 
INSERT INTO Borrowers (BorrowerID, FirstName, LastName, MembershipDate) VALUES 
(1, 'John', 'Doe', DATE '2023-01-01'); 
INSERT INTO Borrowers (BorrowerID, FirstName, LastName, MembershipDate) VALUES 
(2, 'Jane', 'Smith', DATE '2023-02-15'); -- Insert sample data into BorrowedBooks 
INSERT INTO BorrowedBooks (BorrowerID, BookID, BorrowedDate, ReturnDate) VALUES 
(1, 1, DATE '2023-03-01', DATE '2023-03-15'); 
INSERT INTO BorrowedBooks (BorrowerID, BookID, BorrowedDate, ReturnDate) VALUES 
(2, 3, DATE '2023-03-05', DATE '2023-03-20');
