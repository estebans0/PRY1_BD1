--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE getProductionData (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, airdate, title, run_time, is_public, synopsis, trailer, created_by
        FROM production;
END getProductionData;
/
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE getProductionReviews (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT raiting, title,author,id_production
        FROM review
        where id_production = Production;
END getProductionReviews;
/
--------------------------------------------------------------------------------


CREATE OR REPLACE PROCEDURE pricingFromProduction (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT log_date, price
        FROM price_Log
        where id_production = Production
        ORDER BY log_date ASC;
END pricingFromProduction;
/
--------------------------------------------------------------------------------


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
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE getGenres(Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, name, characteristics
        FROM genre;
END getGenres;
/
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE getGenresForProduction(Genre IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT genre_by_prod.id_production
        FROM genre_by_prod
        INNER JOIN genre
        ;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('not in any genre');
END getGenresForProduction;
/
--------------------------------------------------------------------------------

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
        dbms_output.put_line('not in any genre');
    WHEN OTHERS then
        dbms_output.put_line('God knows what happened with this :(');
END getProductionCompanyNames ;
/
--------------------------------------------------------------------------------
--For getting the platfomrs 
CREATE OR REPLACE PROCEDURE getPlatforms (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT platform.name, platform.url
        FROM platform
        INNER JOIN prod_in_platform
        ON platform.id = prod_in_platform.id_platform
        AND prod_in_platform.id_production = Production;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('not in any genre');
    WHEN OTHERS then
        dbms_output.put_line('God knows what happened with this :(');
        
END getPlatforms;
/
--------------------------------------------------------------------------------
--For getting The countries a production taked place in
CREATE OR REPLACE PROCEDURE getProductionCountries (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT country.name
        FROM country
        INNER JOIN prod_by_country
        ON prod_by_country.id_country = country.id
        AND prod_by_country.id_production = Production;
END getProductionCountries;
/
--------------------------------------------------------------------------------
--For getting The FP that were inserted into a production
CREATE OR REPLACE PROCEDURE getProductionFP (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT person.first_name || person.last_name, person.id
        FROM person
        INNER JOIN production_crew
        ON production_crew.id_crew_member = person.id;
END getProductionFP;
/
--------------------------------------------------------------------------------