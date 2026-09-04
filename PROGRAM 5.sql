SET SERVEROUTPUT ON; 
CREATE OR REPACE PROCEDURE Sum_Proc(a IN number, b IN number) IS c number; 
BEGIN 
c := a + b; 
dbms_output.put_line('Sum of two nos = '|| c); 
END Sum_Proc; 
PROGRAM: 
Procedure created. 
For calling the procedure created following code will be executed: 
SET SERVEROUTPUT ON; 
DECLARE 
x number; y number; 
BEGIN 
x := &x; 
y := &y; Sum _Proc(x,y); 
END; 
OUTPUT: 
Enter value for x: 10 
Enter value for y: 20Sum of two nos= 30 
PL/SQL procedure successfully created. 
Department of IT 
10  
SYNTAX FOR FUNCTION : 
CREATE OR REPLACE FUNCTION <function_name>(<variable_name> IN 
<datatype>, 
<variable_name> IN <datatype>,...)RETURN <datatype> IS/AS variable/constant 
declaration; BEGIN -- PL/SQL subprogram body;EXCEPTION -- Exception Handling block ;END 
<function_name>; 
PROGRAM: 
SET SERVEROUTPUT ON; 
CREATE OR REPLACE FUNCTION Sum_Func (a IN number, b IN number) RETURN number 
IS c number; 
BEGIN 
c := a + b; RETURN c; 
END Sum_Func; 
PROGRAM: 
Function Created. 
For calling the function Sum following code will be executed: 
SET SERVEROUTPUT ON; 
DECLARE 
no1 number; 
no2 number; 
result  
number; 
BEGIN 
no1 := &no1; 
no2 := &no2; 
result := Sum(no1,no2); 
dbms_output.put_line(‘Sum of two nos=’ ||result); 
END; 
/ 
11  
OUTPUT: 
Enter value for no1:5 
Enter value for no2:5 
Sum of two nos=10 
PL/SQL procedure successfully created. 
