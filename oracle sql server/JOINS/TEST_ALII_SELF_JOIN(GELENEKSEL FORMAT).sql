--SELF JOIN (GELENEKSEL FORMAT)

/* 
                            EMPLOYEES
FIRST_NAME          LAST_NAME           MANAGER_ID          MANAGER_NAME
__________          _________           __________          ____________
*/

SELECT
    E1.FIRST_NAME,
    E1.LAST_NAME,
    E1.MANAGER_ID,
    E2.FIRST_NAME,
    E2.LAST_NAME
FROM EMPLOYEES E1, EMPLOYEES E2
WHERE E1.MANAGER_ID = E2.EMPLOYEE_ID ;