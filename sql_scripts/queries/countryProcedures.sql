-- INSERT
CREATE OR REPLACE PROCEDURE insertCountry (pName IN VARCHAR2)
AS
BEGIN
    INSERT INTO country (id, name)
    VALUES (s_country.nextval, pName);
    COMMIT;
    
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        dbms_output.put_line('User already exists');
        ROLLBACK;
        RAISE;
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error when trying to add a new user');
        ROLLBACK;
        RAISE;
END insertCountry;
/

-- EDIT
CREATE OR REPLACE PROCEDURE editCountryName (pId IN NUMBER, pName IN VARCHAR2)
AS
BEGIN
    UPDATE country
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
END editCountryName;
/

-- GET ALL DATA
CREATE OR REPLACE PROCEDURE getCountriesData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, name
        FROM country;
END getCountriesData;
/

