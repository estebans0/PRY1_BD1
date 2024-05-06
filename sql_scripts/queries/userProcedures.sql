-- INSERT USER
CREATE OR REPLACE PROCEDURE insertUser (
    pUsername IN VARCHAR2,
    pPassword IN VARCHAR2,
    pEmail IN VARCHAR2,
    pIdType IN NUMBER,
    pLegalId IN VARCHAR2
)
AS
BEGIN
    INSERT INTO userr (id, username, password, email, legal_id, id_type, user_type)
    VALUES (s_person.currval, pUsername, pPassword, pEmail, pLegalId, pIdType, 0);
    COMMIT;
    
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        dbms_output.put_line('User already exists');
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error when trying to add a new user');
        ROLLBACK;
        RAISE;
END insertUser;
/

-- GET ALL USERS DATA
CREATE OR REPLACE PROCEDURE getUsersData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, username, password, email, legal_id, id_type, user_type
        FROM userr;
END getUsersData;
/

-- MAKE OR REMOVE ADMIN
CREATE OR REPLACE PROCEDURE makeOrRemoveAdmin (pId IN NUMBER, pType IN NUMBER)
AS
BEGIN
    UPDATE userr
    SET user_type = pType
    WHERE id = pId;
    COMMIT;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('User with the specified ID not found');
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error when trying to make a new admin');
        ROLLBACK;
        RAISE;
END makeOrRemoveAdmin;
/

