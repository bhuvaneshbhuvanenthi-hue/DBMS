
Create the students Table and Insert Sample Data 
• CREATE SEQUENCE student_seq START WITH 1 INCREMENT BY 1; 
• CREATE TABLE students (student_id INT PRIMARY KEY, student_name 
VARCHAR(100), student_email VARCHAR(100)); 
• INSERT INTO students (student_id, student_name, student_email)  
VALUES (student_seq.NEXTVAL, 'Alice Johnson', 'alice@example.com');  
• INSERT INTO students (student_id, student_name, student_email)  
VALUES (student_seq.NEXTVAL, 'Bob Smith', 'bob@example.com'); 
• INSERT INTO students (student_id, student_name, student_email)  
VALUES (student_seq.NEXTVAL, 'Charlie Brown', 'charlie@example.com');  
Create a View for the students Table 
CREATE VIEW student_view AS SELECT student_id, student_name, student_email FROM         
students; 
Perform DML Operations 
Insert a New Record 
INSERT INTO students (student_id, student_name, student_email)  
VALUES (student_seq.NEXTVAL, 'Diana Prince', 'diana@example.com'); 
Update an Existing Record 
UPDATE students SET student_email = 'new_bob@example.com' WHERE student_name =       
'Bob Smith';  
Delete a Record 
DELETE FROM students WHERE student_name = 'Charlie Brown'; 
Department of IT 
5  
Verify the Changes in the View 
SELECT * FROM student_view; 
student_id 
1 
2 
4 
| student_name 
| Alice Johnson 
| Bob Smith 
| Diana Prince 
Create an Index on the student_email Column 
CREATE INDEX idx_student_email ON students (student_email); 

