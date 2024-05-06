-- INSERT
CREATE OR REPLACE PROCEDURE insertPlatform (pName IN VARCHAR2, pUrl IN VARCHAR2)
AS
BEGIN
    INSERT INTO platform (id, url, name)
    VALUES (s_platform.nextval, pUrl, pName);
    COMMIT;
    
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        dbms_output.put_line('Platform already exists');
        ROLLBACK;
        RAISE;
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error when trying to add a new platform');
        ROLLBACK;
        RAISE;
END insertPlatform;
/

-- EDIT
CREATE OR REPLACE PROCEDURE editPlatform (pId IN NUMBER, pName IN VARCHAR2, pUrl IN VARCHAR2)
AS
BEGIN
    UPDATE platform
    SET name = pName
    WHERE id = pId;
    UPDATE platform
    SET url = pUrl
    WHERE id = pId;
    COMMIT;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Platform with the specified ID not found');
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error');
        ROLLBACK;
        RAISE;
END editPlatform;
/

-- GET ALL DATA
CREATE OR REPLACE PROCEDURE getPlatformsData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, url, name
        FROM platform;
END getPlatformsData;
/



