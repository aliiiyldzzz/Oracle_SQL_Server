-- INNER JOIN (GELENEKSEL FORMAT)

/*

LAST NAME           DEPARTMENT_ID           DEPARTMENT_NAME         CITY
__________          _____________           _______________         ____

LAST_NAME VE DEPARTMENT_ID (EMPLOYEES TABLOSUNDA)
DEPARTMENT_NAME            (DEPARTMENT TABLOSUNDA)
CITY                       (LOCATION TABLOSUNDA)

*/

 SELECT
 E.LAST_NAME,
 E.DEPARTMENT_ID,
 D.DEPARTMENT_NAME,
 L.CITY 
 FROM EMPLOYEES E , DEPARTMENTS D, LOCATIONS L
 WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID AND
 D.LOCATION_ID = L.LOCATION_ID
 ORDER BY 2;
 

SELECT 
    E.FIRST_NAME,
    E.JOB_ID,
    J.JOB_TITLE,
    E.DEPARTMENT_ID,
    D.DEPARTMENT_NAME,
    D.LOCATION_ID,
    L.STREET_ADDRESS,
    L.COUNTRY_ID,
    C.COUNTRY_NAME

FROM EMPLOYEES E, JOBS J, DEPARTMENTS D, LOCATIONS L, COUNTRIES C
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID AND E.JOB_ID = J.JOB_ID AND D.LOCATION_ID = L.LOCATION_ID AND
L.COUNTRY_ID = C.COUNTRY_ID
ORDER BY 1;








