-- INSERT
CREATE OR REPLACE PROCEDURE insertProdCompany (pName IN VARCHAR2)
AS
BEGIN
    INSERT INTO prod_company (id, name, id_country)
    VALUES (s_prod_company.nextval, pName, NULL);
    COMMIT;
    
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        dbms_output.put_line('ProdCompany already exists');
        ROLLBACK;
        RAISE;
    WHEN OTHERS THEN
        dbms_output.put_line('Unexpected error when trying to add a new ProdCompany');
        ROLLBACK;
        RAISE;
END insertProdCompany;
/

-- EDIT
CREATE OR REPLACE PROCEDURE editProdCompany (pId IN NUMBER, pName IN VARCHAR2)
AS
BEGIN
    UPDATE prod_company
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
END editProdCompany;
/

-- GET ALL DATA
CREATE OR REPLACE PROCEDURE getProdCompanyData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, name
        FROM prod_company;
END getProdCompanyData;
/




