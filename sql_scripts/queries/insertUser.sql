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
    VALUES (s_idPerson.currval, pUsername, pPassword, pEmail, pLegalId, pIdType, 0);
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
