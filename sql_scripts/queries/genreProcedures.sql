-- INSERT
CREATE OR REPLACE PROCEDURE insertGenre (pName IN VARCHAR2, pDescription IN VARCHAR2)
AS
BEGIN
    INSERT INTO genre (id, name, characteristics)
    VALUES (s_genre.nextval, pName, pDescription);
    COMMIT;
    
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        dbms_output.put_line('Genre already exists');
        ROLLBACK;
        RAISE;
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error when trying to add a new genre');
        ROLLBACK;
        RAISE;
END insertGenre;
/

-- EDIT
CREATE OR REPLACE PROCEDURE editGenre (pId IN NUMBER, pName IN VARCHAR2, pDescription IN VARCHAR2)
AS
BEGIN
    UPDATE genre
    SET name = pName
    WHERE id = pId;
    UPDATE genre
    SET characteristics = pDescription
    WHERE id = pId;
    COMMIT;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('User with the specified ID not found');
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error');
        ROLLBACK;
        RAISE;
END editGenre;
/

-- GET ALL DATA
CREATE OR REPLACE PROCEDURE getGenresData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, name, characteristics
        FROM genre;
END getGenresData;
/





