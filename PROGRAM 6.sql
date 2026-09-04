CREATE OR REPLACE TRIGGER up_classd BEFORE UPDATE ON 
customer FOR EACH ROW 
BEGIN 
if updating then 
DBMS_OUTPUT.PUT_LINE(‘new value is’|| :new.stotal); 
DBMS_OUTPUT.PUT_LINE(‘old value is’|| :old.stotal); 
END; 
OUTPUT: 
SQL>/ 
Trigger created. 
SQL> select * from customer; 
SID SNAME SALARY 
1 Aarthi 300 
2 Ramya 500 
3 Sakthi 670 
SQL> update customer set salary=500 where sid=39; 
new value is;500 
old value is;300 
SQL> select * from customer; 
SID SNAME STOTAL 
1 Aarthi 500 
2 Ramya 500 
3 Skathi 670 
TRIGGER CREATED DURING DELETION: 
CREATE OR REPLACE TRIGGER del_classb BEFORE DELETE ON 
customer FOR EACH ROW 
BEGIN 
DBMS_OUTPUT.PUT_LINE('row deleted'); 
END;  
OUTPUT: 
Trigger created. 
SQL> delete from customer where id=1; 
row deleted 
1 row deleted. 
SQL> select * from customer; 
 
SID SNAME STOTAL 
2 Ramya 500 
3 Skathi 670 
TRIGGER CREATED DURING INSERTION: 
CREATE OR REPLACE TRIGGER ins_classb BEFORE INSERT ON classb 
FOR EACH ROW 
DECLARE 
InvTot EXCEPTION; 
BEGIN 
IF :new.stotal > 1000 
THEN 
RAISE InvTot;  
end if;  
EXCEPTION 
    when InvTot then 
RAISE_APPLICATION_ERROR(-20000, 'Total not 
valid'); 
END; 
OUTPUT: 
SQL>/ Trigger created. 
SQL> select * from classb; 
 SID SNAME SDEPT STOTAL GRADE  
1 Ramya IT 450  
2 Ezhil IT 460  
3 Sathya ECE 900  
4 Sakthi CSE 450  
SQL> insert into classb values(5,’vino’,’it’,500,’a’);  
1 row created. 
SQL> insert into classb values(6,’jana’,’it’,20000,’a’); 
insert into classb values(6,’jana’,’it’,20000,’a') ERROR at 
line 1: 
ORA-20000: Total not valid 
ORA-06512: at &quot;SCOTT.INS_CLASSB&quot;, line 11 
ORA-04088: error during execution of trigger „SCOTT.INS_CLASSB‟ 
