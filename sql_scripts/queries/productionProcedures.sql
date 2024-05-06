--------------------------------------------------------------------------------
--Get data from productions by id.
CREATE OR REPLACE PROCEDURE getProductionData (ProdId IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, airdate, title, run_time, synopsis, trailer-- created_by?
        FROM production
        where id=ProdId;
END getProductionData;
/

CREATE OR REPLACE PROCEDURE getSeries (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id
        FROM series;
END getSeries;
/

CREATE OR REPLACE PROCEDURE getMovies (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id_movie
        FROM Movie;
END getMovies;
/

--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE getProductionReviews (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT review.raiting raiting, review.title title, userr.username username
        FROM review
        Inner Join userr
        ON userr.id = review.author
        AND id_production = Production;
        
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
END imagesForProduction;
/
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE getGenres(pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT id, name, characteristics
        FROM genre;

END getGenres;
/
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE getGenresForProduction(GenreId IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT genre_by_prod.id_production id_production
        FROM genre_by_prod
        INNER JOIN genre
        ON genre.id = genre_by_prod.id_genre
        AND genre.id = GenreId
        ;

END getGenresForProduction;
/
--------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE getProductionCompanyNames (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT prod_company.name name
        FROM prod_company
        INNER JOIN prod_by_company
        ON prod_company.id = prod_by_company.id
        AND prod_by_company.id_production = Production;
        
END getProductionCompanyNames ;
/
--------------------------------------------------------------------------------
--For getting the platfomrs 
CREATE OR REPLACE PROCEDURE getPlatforms (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT platform.name name, platform.url url
        FROM platform
        INNER JOIN prod_in_platform
        ON platform.id = prod_in_platform.id_platform
        AND prod_in_platform.id_production = Production;
        
END getPlatforms;
/
--------------------------------------------------------------------------------
--For getting The countries a production taked place in
CREATE OR REPLACE PROCEDURE getProductionCountries (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT country.name name
        FROM country
        INNER JOIN prod_by_country
        ON prod_by_country.id_country = country.id
        AND prod_by_country.id_production = Production;
END getProductionCountries;
/
----------------------------------------------------------------------------------------------
--For getting The FP that were inserted into a production
CREATE OR REPLACE PROCEDURE getProductionFP (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT person.first_name name, person.id id
        FROM person
        INNER JOIN production_crew
        ON production_crew.id_crew_member = person.id;
END getProductionFP;
/
--------------------------------------------------------------------------------------------