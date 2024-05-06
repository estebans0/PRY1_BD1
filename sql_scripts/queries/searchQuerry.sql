
CREATE OR REPLACE PROCEDURE getGenders (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
    SELECT gender.name, count(*) quantity
        FROM gender
        INNER JOIN person
        on person.gender = gender.id 
        Inner join userr
        on userr.id = person.id
        group by gender.name;
END getGenders;
/

CREATE OR REPLACE PROCEDURE getAgeDistribution (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
    SELECT EXTRACT(YEAR FROM person.birthdate) - EXTRACT(YEAR FROM sysdate) age, count(*) quantity
    from person
    inner join userr
    on person.id = userr.id
    group by EXTRACT(YEAR FROM person.birthdate) - EXTRACT(YEAR FROM sysdate);
END getAgeDistribution;
/

CREATE OR REPLACE PROCEDURE getGenreDistribution (pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
    SELECT genre.name, count(*)
    FROM genre
    LEFT JOIN genre_by_prod
    ON genre_by_prod.id_genre = genre.id
    INNER JOIN production
    ON production.id = genre_by_prod.id_production
    group by genre.name;--ME da miedo este procedimiento, funcionara correctamente?
    
END getGenreDistribution;
/
-- Ahora los querries... dios mio hay muchos.



------------------------------------------------------------------------------------------------------------Todo esto se puede lograr en java.
/*n cantidad de productos más comprados
CREATE OR REPLACE PROCEDURE getMostBougth (N IN number, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
    SELECT production.title, RANK() OVER(ORDER BY pricelog.
    FROM price_log
    ;   Esto se puede hacer en java.
    
END getMostBougth;
/
*/
------------------------------------------------------------------------------------------------------------
--Busqueda de producciones

--Top N de 250 productos más populares, contiene el review

