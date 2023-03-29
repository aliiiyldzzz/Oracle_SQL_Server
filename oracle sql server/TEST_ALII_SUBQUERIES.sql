/*

1) KOLON SEV�YES�NDE SUBQUERY �RNE��
EMPLOYEE_ID     LAST_NAME       DEPARTMENT_NAME
___________     _________       _______________

2)TABLE SEV�YES�NDE SUBQUERY �RNE��

SELECT * FROM 
(SELECT COL1, COL2,... FROM TABLEX)X;

-- WHERE CONDITIONS ���NDE SUBQUERY �RNEKLER�

3) DAVIES �S�ML� K���DEN SONRA ��E G�RENLER� L�STELEYEL�M.

LAST_NAME       HIRE_DATE
_________       _________

4) UNVANI TAYLOR �LE AYNI OLUP TAYLORDAN DAHA FAZLA MAA� ALANLARI L�STELEYEL�M.

LAST_NAME       JOB_ID      SALARY
_________       ______      ______

5)EN D���K MAA� ALAN K���Y� BULALIM.


LAST_NAME       JOB_ID      SALARY
_________       ______      ______

6) 50 NOLU B�L�MDEK� EN D���K MAA�TAN DAHA Y�KSEK MAA� ALAN B�L�MLERDEK� EN D���K MAA�I B�L�M BAZINDA L�STELEYEL�M.

DEPARTMENT_ID       MIN_SALARY
_____________       __________
*/

1)SELECT
    E.EMPLOYEE_ID,
    E.LAST_NAME,
    (SELECT DEPARTMENT_NAME FROM DEPARTMENTS D WHERE D.DEPARTMENT_ID=E.DEPARTMENT_ID)

FROM EMPLOYEES E ORDER BY 1;

2) SELECT BOLGE_ISMI, ULKE_ADI, L.CITY FROM
    (
    SELECT 
        R.REGION_ID BOLGE_NO,
        R.REGION_NAME BOLGE_ISMI,
        C.COUNTRY_ID ULKE_ADI,
        C.COUNTRY_NAME ULKE_ADI
    FROM REGIONS R
        JOIN COUNTRIES C ON C.REGION_ID = R.REGION_ID
    )X
    --WHERE X.BOLGE_ISMI = "EUROPE";
    JOIN LOCATIONS L ON L.COUNTRY_ID = X.ULKE_NO;