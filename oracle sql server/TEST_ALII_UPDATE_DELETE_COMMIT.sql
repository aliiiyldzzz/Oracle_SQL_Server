DESC EMPLOYEES_COPY;

SELECT EMPLOYEE_ID, SALARY, COMMISSION_PCT FROM EMPLOYEES_COPY;

-SENARYO-1
- 101 VE 102 SICIL NUMARALI �ALISANLARIN MAA�INI 400$ D���R�P KOM�SS�ONLARI SIFIRLA.

UPDATE EMPLOYEES_COPY SET SALARY= SALARY-400, COMMISSION_PCT=NULL WHERE EMPLOYEE_ID IN (101,102);

-SENARYO-2
-100 NOLU B�L�MDE �ALI�ANLARIN MAA�INA ZAM YAPMADAN �NCEK� HAL�NE UPDATE EDEL�M
-BUNUN ���N BA�KA B� TABLODAN EMPLOYEES DE�ER�
-D��ER TABLOYA EMPLOYEES_COPY DE�ER�N� UPDATE EDECE��Z

SELECT EMPLOYEE_ID, SALARY, COMMISSION_PCT FROM EMPLOYEES_COPY WHERE DEPARTMENT_ID = 90;
 
UPDATE EMPLOYEES_COPY A SET A.SALARY=(SELECT B.SALARY FROM EMPLOYEES B WHERE A.EMPLOYEE_ID = B.EMPLOYEE_ID)
WHERE A.DEPARTMENT_ID=90;
Commit;