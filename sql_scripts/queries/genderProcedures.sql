-- INSERT
CREATE OR REPLACE PROCEDURE insertGender (pName IN VARCHAR2)
AS
BEGIN
    INSERT INTO gender (id, name)
    VALUES (s_gender.nextval, pName);
    COMMIT;
    
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        dbms_output.put_line('Gender already exists');
        ROLLBACK;
        RAISE;
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error when trying to add a new user');
        ROLLBACK;
        RAISE;
END insertGender;
/

-- EDIT
CREATE OR REPLACE PROCEDURE editGenderName (pId IN NUMBER, pName IN VARCHAR2)
AS
BEGIN
    UPDATE gender
    SET name = pName
    WHERE id = pId;
    COMMIT;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('User with the specified ID not found');
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error when trying to make a new admin');
        ROLLBACK;
        RAISE;
END editGenderName;
/

-- GET ALL DATA
CREATE OR REPLACE PROCEDURE getGendersData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, name
        FROM gender;
END getGendersData;
/





