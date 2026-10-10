SET SERVEROUTPUT ON; 
DECLARE 
c_id customer.id%type:=5; 
c_name customer.name%type; 
c_addr customer.address%type; 
BEGIN 
SELECT name, address INTO c_name, c_addr  
FROM customer where id=c_id; 
dbms_output.put_line(‘name:’ || c_name); 
dbms_output.put_line(‘address:’ || c_addr); 
EXCEPTION 
WHEN no_data_found THEN 
dbms_output.put_line(‘no such customer!’); 
WHEN others THEN 
dbms_output.put_line(‘error!’); 
END; 
/ 
Pre-defined Exceptions 
SQL> select * from customer; 
ID NAME AGE ADDRESS SALARY 
1 Ezhil 23 aaa 20000 
2 Aarthi 24 bbb 30000 
3 Sumathi 21 ccc 35000 
4 Viji 24 ddd 40000 
5 Priya 21 eee 43000 
Output: 
name :priya 
address : eee 
PL/SQL procedure successfully completed. 
User-defined Exceptions 
ACADEMIC YEAR: 2026-2027 
DECLARE 
c_id customers.id%type := cc_id; 
c_name customers.name%type; c_addr customers.address%type; 
ex_invalid_id EXCEPTION; 
BEGIN 
IF c_id<= 0 THEN RAISE ex_invalid_id; 
ELSE 
SELECT name, address INTO c_name, c_addr FROM customers WHERE id = c_id; 
DBMS_OUTPUT.PUT_LINE (‘Name: ‘|| c_name); 
DBMS_OUTPUT.PUT_LINE (‘Address: ‘ || c_addr); 
END IF; 
EXCEPTION 
WHEN ex_invalid_id THEN 
dbms_output.put_line(‘ID must be greater than zero!’); 
WHEN no_data_found THEN dbms_output.put_line(‘No such customer!’); 
WHEN others THEN dbms_output.put_line(‘Error!’); 
END; 
/ 
OUTPUT: 
Enter value for cc_id: -6 (let‟s enter a value -6)old 2: c_id customers.id%type := cc_id; new 2: 
c_id customers.id%type := - 
6;ID must be greater than zero! 
PL/SQL procedure successfully completed. 
