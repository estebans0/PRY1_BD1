CREATE OR REPLACE PROCEDURE getUsersData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, username, password, email, legal_id, id_type, user_type
        FROM userr;
END getUsersData;
/
