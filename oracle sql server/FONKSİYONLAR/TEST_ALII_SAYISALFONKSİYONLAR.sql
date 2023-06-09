
-- SIGN ( ��ARET FONKS�YONU), ABS (MUTLAK DE�ER)
SELECT SALARY, SIGN(SALARY) FROM EMPLOYEES;
SELECT SIGN(-3) FROM DUAL;

SELECT ABS(-15), ABS(123.45) FROM DUAL;

SELECT SIGN (-3*5 - ABS(-4*3+13)),  ABS(-13+5) FROM DUAL;


-- COS, ACOS, COSH, SIN, ASIN, SINH, TAN, ATAN,TANH ( TR�GOOMETRIK VE TERS TRIGONOMETRIK)
SELECT COS(30 * 3.14/180) FROM DUAL;
SELECT SIN(30 * 3.14/180) FROM DUAL;
SELECT TAN(30 * 3.14/180) FROM DUAL;
SELECT ACOS(0) FROM DUAL;

-- CEIL, FLOOR ( YUKARIDAN VE A�A�IDAN EN YAKIN TAM SAYI DE�ER�)
SELECT CEIL(123.456) FROM DUAL;
SELECT FLOOR(123.456) FROM DUAL;

-- EXP ( e �ZER� X), LN (DO�AL LOGAR�TMA), LOG (BAYA�I LOGAR�TMA)
SELECT EXP(1) FROM DUAL;
SELECT LN(1) FROM DUAL;
SELECT LOG(10,10) FROM DUAL;

-- MOD ( MOD�LER AR�TMET�K)
SELECT MOD(5,2) FROM DUAL;
SELECT LEVEL, MOD(100,LEVEL) FROM DUAL CONNECT BY LEVEL<12;

-- POWER(KUVVET), SQRT(KAREK�K)
SELECT POWER(5,2) FROM DUAL;
SELECT SQRT(100) FROM DUAL;
SELECT POWER(1923,6), MOD(POWER(1923,6),10) FROM DUAL;

--ROUND (YUVARLAMA)
SELECT LEVEL-1, ROUND(1234.56,LEVEL) FROM DUAL CONNECT BY LEVEL <6;