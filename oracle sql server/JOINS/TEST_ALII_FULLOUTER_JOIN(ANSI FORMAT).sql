-- FULL OUTER JOIN (ANSI FORMAT)(LEFT JOIN + RIGHT JOIN)

/*
                DEPT1                                     DEPT2
DEPARTMENT_ID          DEPARTMENT_NAME     DEPARTMENT_ID       DEPARTMENT_NAME
_____________          _______________     _____________       _______________
*/

SELECT
    D1.DEPARTMENT_ID "DEPT1_ID",
    D1.DEPARTMENT_NAME "DEPT1_NAME",
    D2.DEPARTMENT_ID "DEPT2_ID",
    D2.DEPARTMENT_NAME "DEPT2_NAME"

FROM DEPT1 D1
    FULL OUTER JOIN DEPT2 D2 ON D1.DEPARTMENT_ID= D2.DEPARTMENT_ID
    ORDER BY DEPT1_ID ASC; 