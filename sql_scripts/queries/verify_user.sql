CREATE FUNCTION verifyUserLogin (p_username IN VARCHAR2, p_password IN VARCHAR2)
RETURN NUMBER
IS
    idUser NUMBER(4) := -1; -- -1 valor por default
BEGIN
    SELECT id
    INTO idUser
    FROM userr
    WHERE username = p_username AND password = p_password;
    RETURN (idUser);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN -1;
        WHEN OTHERS THEN
            RETURN -1;
END;
