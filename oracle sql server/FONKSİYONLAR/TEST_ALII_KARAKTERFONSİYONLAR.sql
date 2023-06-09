--LOWER
SELECT DEPARTMENT_NAME, LOWER(DEPARTMENT_NAME) FROM DEPARTMENTS;

--UPPER
SELECT DEPARTMENT_NAME, UPPER(DEPARTMENT_NAME) FROM DEPARTMENTS;

--INITCAP
SELECT DEPARTMENT_NAME, INITCAP(DEPARTMENT_NAME) FROM DEPARTMENTS;


--SUBSTR(STRING,M,N)
SELECT SUBSTR(DEPARTMENT_NAME,1,3) FROM DEPARTMENTS;

--LENGHT
SELECT LENGTH(DEPARTMENT_NAME) FROM DEPARTMENTS;

--INSTR
SELECT INSTR('MEHMET �ELEB�O�LU','E',1,1) FROM DUAL;
SELECT INSTR('MEHMET �ELEB�O�LU','E',4,1) FROM DUAL;

--REPLACE(STR�NG, OLD_STRING,NEW_STRING)
SELECT REPLACE('AL� YILDIZ' , 'AL�', 'A.') FROM DUAL;
SELECT REPLACE('AL� YILDIZ' , 'I', '!') FROM DUAL;

SELECT FIRST_NAME, JOB_ID,
REPLACE(JOB_ID, 'IT','BT')
FROM EMPLOYEES;

--TRANSLATE(STRING, OLD_CHARACTER(S),NEW_CHARACTE(S))
SELECT TRANSLATE('ORACLESQL', 'RONS','1234')FROM DUAL;
SELECT 'AL� YILDIZ'ORJ_MESAJ, TRANSLATE('AL� YILDIZ','ABCDEFG�HI�JKLMNO�PRS�TU�VYZ ABCDEFG�HI�JKLMNO�PRS�TU�VYZ', 'BCDEFG�HI�JKLMNO�PRS�TU�VYZA%BCDEFG�HI�JKLMNO�PRS�TU�VYZA')S�FREL�_MESAJ FROM DUAL;
SELECT 'BMJ%Z�ME�A'SIFRELI_MESAJ, TRANSLATE('BMJ%Z�ME�A','BCDEFG�HI�JKLMNO�PRS�TU�VYZA%BCDEFG�HI�JKLMNO�PRS�TU�VYZA', 'ABCDEFG�HI�JKLMNO�PRS�TU�VYZ ABCDEFG�HI�JKLMNO�PRS�TU�VYZ')ORJ_MESAJ FROM DUAL;

--RPAD
SELECT LAST_NAME, RPAD(LAST_NAME,20 , '*') FROM EMPLOYEES;
 
--LPAD
SELECT LAST_NAME, LPAD(LAST_NAME,20 , '*') FROM EMPLOYEES;
 
--LTRIM
SELECT LTRIM('            ORACLE SQL                   ') FROM DUAL;

--RTRIM 
SELECT RTRIM('            ORACLE SQL                   ') FROM DUAL;

--TRIM
SELECT TRIM('            ORACLE SQL                   ') FROM DUAL;

--CONCAT
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES;

SELECT CONCAT(FIRST_NAME,LAST_NAME) FROM EMPLOYEES;
SELECT CONCAT(FIRST_NAME,CONCAT(' ',LAST_NAME)) FROM EMPLOYEES;