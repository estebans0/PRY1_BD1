CREATE OR REPLACE PROCEDURE getProductionData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, airdate, title, run_time, is_public, synopsis, trailer, created_by
        FROM production;
END getProductionData;
/


CREATE OR REPLACE PROCEDURE getProductionReviews (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT raiting, title,author,id_production
        FROM review
        where id_production = Production;
END getProductionReviews;
/

CREATE OR REPLACE PROCEDURE pricingFromProduction (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT log_date, price
        FROM price_Log
        where id_production = Production;
END pricingFromProduction;
/

CREATE OR REPLACE PROCEDURE imagesForProduction (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT image
        FROM production_image
        where id_production = Production;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('not in a genre');
    WHEN OTHERS then
        dbms_output.put_line('God knows what happened with this :(');
END imagesForProduction;
/

CREATE OR REPLACE PROCEDURE getGenres(Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, name, characteristics
        FROM genre;
END getGenres;
/

CREATE OR REPLACE PROCEDURE getGenresForProduction(Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT genre_by_prod.id_genre
        FROM genre_by_prod
        Inner join genre
        on genre.id = genre_by_prod.id_genre
        where id_production = Production
        ;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('not in a genre');
    WHEN OTHERS then
        dbms_output.put_line('God knows what happened with this :(');
END getGenresForProduction;
/

CREATE OR REPLACE PROCEDURE getProductionCompanyNames (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT prod_company.name
        FROM prod_company
        INNER JOIN prod_by_company
        ON prod_company.id = prod_by_company.id
        AND prod_by_company.id_production = Production;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('not in a genre');
    WHEN OTHERS then
        dbms_output.put_line('God knows what happened with this :(');
END getProductionCompanyNames ;
/



--Then, get all movies in a genre
/*
CREATE OR REPLACE PROCEDURE _______ (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT 
        FROM 
        where id_production = Production;
END __________;
/

CREATE TABLE prod_company ( -- 5 productora de la produccion
    id                          NUMBER(4)       CONSTRAINT prodCompany_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT prodCompany_name_nn NOT NULL,
    id_country                  NUMBER(4)
);

CREATE TABLE prod_by_company ( -- 6 relacion NN entre producion y compañia productora
    id                          NUMBER(4)       CONSTRAINT prodByCompany_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT prodByCompany_idProduction_nn NOT NULL,
    id_company                  NUMBER(4)       CONSTRAINT prodByCompany_idCompany_nn NOT NULL
);
*/