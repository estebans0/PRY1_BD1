CREATE OR REPLACE PROCEDURE getPeopleData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, birthdate, first_name, last_name, middle_name, nickname, image, gender--, partner
        FROM person;
END getPeopleData;
/
