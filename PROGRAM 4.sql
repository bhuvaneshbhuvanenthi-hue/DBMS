SET SERVEROUTPUT ON; 
DECLARE 
total_rows number(2); 
BEGIN 
UPDATE customers SET salary = salary + 500; 
IF sql%notfound THEN  
dbms_output.put_line('no customers selected'); 
ELSIF sql%found THEN 
total_rows := sql%rowcount; 
dbms_output.put_line( total_rows || ' customers selected '); 
END IF; 
END; 
       / 
OUTPUT: 
6 customers selected 
PL/SQL procedure successfully completed. 
SQL>Select * from customers; 
ID NAME AGE ADDRESS SALARY 
1 Ramesh 32 Ahmadabad 2000.00 
2 Khilan 25 Delhi 1500.00 
3 Kaushik 23 Kota 2000.00 
4 Chaitali 25 Mumbai 6500.00 
5 Hardik 27 Bhopal 8500.00 
6 Komal 22 MP 4500.00
EXPLICIT CURSORS: 
Explicit cursors are programmer-defined cursors for gaining more control over the context 
area. An explicit cursor should be defined in the declaration section of the PL/SQL Block. It is 
created on a SELECT Statement which returns more than one row. 
Steps: 
1. Declaring the cursor for initializing the memory 
2. Opening the cursor for allocating the memory 
3. Fetching the cursor for retrieving the data 
4. Closing the cursor to release the allocated memory 
Example 
DECLARE 
c_id customers.id%type; 
c_name customers.name%type; 
c_addr customers.address%type; 
CURSOR c_customers IS                                                                                                                             
SELECT id, name, address 
FROM customers; 
BEGIN OPEN c_customers; 
LOOP 
FETCH c_customers INTO c_id, c_name, c_addr; 
EXIT WHEN c_customers%notfound; 
dbms_output.put_line(c_id || '' || c_name || '' || c_addr); 
END LOOP; 
CLOSE c_customers; 
END; 
/ 
Output: 
ID NAME ADDRESS  
1 Ramesh Ahmadabad 
2 Khilan Delhi 
3 Kaushik Kota 
4 Chaitali Mumbai 
5 Hardik Bhopal 
6 Komal MP 
