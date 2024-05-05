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
