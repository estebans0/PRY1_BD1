CREATE OR REPLACE PROCEDURE currPersonId (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT s_idPerson.currval FROM dual;
END currPersonId;
/
