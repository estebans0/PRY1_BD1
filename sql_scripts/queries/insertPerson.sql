CREATE OR REPLACE PROCEDURE insertPerson (
    pFirstName IN VARCHAR2,
    pLastName IN VARCHAR2,
    pMiddleName IN VARCHAR2,
    pNickName IN VARCHAR2,
    pGender IN VARCHAR2,
    pDob IN VARCHAR2
)
AS
BEGIN
    INSERT INTO person (id, birthdate, first_name, middle_name, last_name, nickname, image, gender)
    VALUES (s_idPerson.nextval, TO_DATE(pDob, 'DD-MM-YYYY'), pFirstName, NULL, pLastName, NULL, NULL, pGender, NULL);
    COMMIT;
    
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        dbms_output.put_line('Person already exists');
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error when trying to add a new person');
        ROLLBACK;
        RAISE;
END insertPerson;
/
