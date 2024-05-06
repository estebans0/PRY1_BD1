--- *********************************************** PERSON PROCEDURES ***********************************************
-- GET CURRENT PERSON ID
CREATE OR REPLACE PROCEDURE currPersonId (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT s_person.currval FROM dual;
END currPersonId;
/

-- INSERT
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
    VALUES (s_person.nextval, TO_DATE(pDob, 'DD-MM-YYYY'), pFirstName, NULL, pLastName, NULL, NULL, pGender);
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

-- GET ALL PEOPLE DATA
CREATE OR REPLACE PROCEDURE getPeopleData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, birthdate, first_name, last_name, middle_name, nickname, image, gender
        FROM person;
END getPeopleData;
/

--- *********************************************** FILM PERSON PROCEDURES ***********************************************
-- INSERT
CREATE OR REPLACE PROCEDURE insertFilmPerson (
    pHeight IN NUMBER,
    pTrivia IN VARCHAR2,
    pBiography IN VARCHAR2,
    pNationality IN VARCHAR2
)
AS
BEGIN
    INSERT INTO film_person(id, heigth_cm, trivia, biography, nacionality, id_city, rol)
    VALUES (s_person.currval, pHeight, pTrivia, pBiography, pNationality, NULL, NULL); -- city null porque no se usa
    COMMIT;
    
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        dbms_output.put_line('Person already exists');
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error when trying to add a new person');
        ROLLBACK;
        RAISE;
END insertFilmPerson;
/

