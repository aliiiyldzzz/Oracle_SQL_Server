- OBJECT PRIVILIGES

GRANT SELECT ON REGIONS TO CELEBI;

GRANT INSERT ON REGIONS TO CELEBI;

GRANT UPDATE, DELETE ON REGIONS TO CELEBI;


SELECT * FROM USER_TAB_PRIVS_MADE;

REVOKE SELECT ON REGIONS FROM CELEBI;

REVOKE DELETE, UPDATE ON REGIONS FROM CELEBI;

REVOKE INSERT ON REGIONS FROM CELEBI; 