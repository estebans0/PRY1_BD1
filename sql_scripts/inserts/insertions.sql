--**************
--* Tabla genre*
--**************
DROP SEQUENCE s_genre;

ALTER TABLE genre MODIFY (characteristics VARCHAR2(500));


CREATE SEQUENCE s_genre
start with 2
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Accion', 'Implica una interacción moral entre el «bien» y el «mal».');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Aventura', 'Refleja un mundo heroico de combates y aventuras.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Animación', 'Producciones basadas en dibujos animados o images generadas por computadora.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Biografia', 'Genero audiovisual que trata la vida/obra de un personaje.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Comedia', 'Una comedia cinematográfica es una película con situaciones de humor .');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Crimen', 'Se centra en actos criminales y en la investigación que se hace sobre estos.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Documental', 'Hace referencia a temas de interés científico, social o cultural, entre otros.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Drama', 'Se centran principalmente en el desarrollo de una lid entre los protagonistas.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Familiar', 'Orientadas a ser disfrutadas por todos los miembros de una "familia tradicional"');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Fantasía', ' Narra mundos y personajes mágicos que provienen únicamente de la imaginación de su autor.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Film-Noir', 'Film donde el protagonista es un antihéroe, casi siempre vinculado a una femme fatale.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Histórico', 'Género cinematográfico en que la ambientación en una época histórica determinada.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Musical', 'Películas con temas musicales que son fundamentales en el desarrollo argumental.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Misterio', 'Una película de misterio es un género cinematográfico que gira en torno a la solución de un problema o un crimen.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Romance', 'Relata un desenvolvimiento romántico, cariñoso o amoroso entre dos personas.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Sci-Fi', 'Historias fantásticas en donde la justificación de lo desconocido se basa en la ciencia.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Cortometraje', 'Audiovisual de corta duración, usualmente de menos de 30 minutos');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Suspenso', 'Es un recurso literario y un amplio género de literatura, cine, televisión y videojuegos, que incluye numerosos y frecuentemente solapados subgéneros, cuyo objetivo principal es mantener al lector a la expectativa.');
INSERT INTO genre (id, name, characteristics)
VALUES (s_genre.nextval, 'Western', ' del período colonial a la era moderna de los Estados Unidos de América, a menudo mitificándolos.');


--**************
--* Platform   *
--**************
DROP SEQUENCE s_platform;

CREATE SEQUENCE s_platform
start with 2
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

INSERT INTO platform(id, url, name)
values(s_platform.nextval , 'www.netflix.com','Netflix');

INSERT INTO platform(id, url, name)
values(s_platform.nextval, 'https://www.max.com','Max');

INSERT INTO platform(id, url, name)
values(s_platform.nextval, 'https://www.peacocktv.com','Peacock');

INSERT INTO platform(id, url, name)
values(s_platform.nextval, 'https://www.hulu.com','Hulu');

INSERT INTO platform(id, url, name)
values(s_platform.nextval, 'https://www.disneyplus.com', 'Disney+');

INSERT INTO platform(id, url, name)
values(s_platform.nextval, 'https://tv.apple.com','AppleTV+');

INSERT INTO platform(id, url, name)
values(s_platform.nextval, 'https://www.primevideo.com','Prime Video');

INSERT INTO platform(id, url, name)
values(s_platform.nextval, 'https://www.paramountplus.com/','Paramount+');



--**************
--* Gender     *
--**************

INSERT INTO gender(id, name)
values(2 , 'Masculino');

INSERT INTO gender(id, name)
values(3 , 'Femenino');

INSERT INTO gender(id, name)
values(4 , 'Gay');

INSERT INTO gender(id, name)
values(5 , 'Lesbiana');

INSERT INTO gender(id, name)
values(6, 'Bisexual');

INSERT INTO gender(id, name)
values(7, 'Trans');

INSERT INTO gender(id, name)
values(8 , 'Intersex');

INSERT INTO gender(id, name)
values(9, 'Otro');

INSERT INTO gender(id, name)
values(10 , 'No especifica');


DROP SEQUENCE s_gender;

CREATE SEQUENCE s_gender
start with 12
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;
--**************
--* Rol        *
--**************
DROP SEQUENCE s_rol;

CREATE SEQUENCE s_rol
start with 99
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

alter table rol drop constraint ROL_CHARNAME_NN;

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Director', NULL);

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Productor', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Productor Ejecutivo', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Cast', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Director de Casting', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , '1st AD', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , '2nd AD', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Set PA', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Diseño de producción', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Director de Arte', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Vestuarista', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Prop Master', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Art PA', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Director de Fotografía', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Operador de Cámara', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , '1st AC', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , '2nd AC', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'DIT', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Gaffer', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Best Boy Electric', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Electricista', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Operador del Generador', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Key Grip', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Best Boy Grip', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Grip', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Dolly Grip', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Maquillista', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Estilista', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Asistente de maquillaje', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Maquillista de efectos especiales', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Diseñador de vestuario', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Supervisor de vestuario', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Set Costumer', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Sastre', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Shopper', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Production Sound Mixer', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Operador de Boom', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Asistente de Sonido', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Catering Service', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Coordinador de Acrobacias', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Doble de riesgo', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Supervisor de VFX', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Coordinador de VFX', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Line Producer', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Unit Production Manager', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Coordinador de Producción', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Contador', '');

INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Office PA', '');


INSERT INTO rol(type, name, character_name)
values(s_rol.nextval , 'Guionista', '');
--**************
--* Production_Company *
--**************
DROP SEQUENCE s_prod_company;

CREATE SEQUENCE s_prod_company
start with 3
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Disney', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Columbia', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Universal', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Fox', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Warner', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Marvel', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'MGM', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Pixar', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'New Line', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Dreamworks', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Disney', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Paramount', id
from country where country.name = 'United States' ;

INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Clerkenwell Films', id
from country where country.name = 'United Kingdom' ;


INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Sony', id
from country where country.name = 'United States' ;


INSERT INTO prod_company(id, name, id_country)
select s_prod_company.nextval, 'Sogecine', id
from country where country.name = 'Spain' ;


--***********************
--* Identification Type * 
--***********************
DROP SEQUENCE s_identification_type;

CREATE SEQUENCE s_identification_type
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

INSERT INTO identification_type(id, name)
values(s_identification_type.nextval ,  'cédula');

INSERT INTO identification_type(id, name)
values(s_identification_type.nextval ,  'pasaporte');
--****************
--*   Person     * 
--****************

DROP SEQUENCE s_person;

CREATE SEQUENCE s_person
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

INSERT INTO person(id,birthdate, first_name, Middle_name, last_name, nickname,image, gender)
values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'Jose', 'Julian', 'Castro', 'Jota', NULL, 2);

INSERT INTO userr(id, username, password, email, legal_id, id_type, user_type)
VALUES(s_person.currval ,  'user1','password', 'a@a.com', 2444333, 1, 1);


INSERT INTO administrator(id)
VALUES(s_person.currval);

--INSERT INTO userr(id, username, password, email, legal_id, id_type, user_type)
--values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'Jose', 'Julian', 'Castro', 'Jota', NULL, 2);

INSERT INTO person(id,birthdate, first_name, Middle_name, last_name, nickname,image, gender)
values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'María', 'Amalia', 'Chacón', '', NULL, 3);


INSERT INTO person(id,birthdate, first_name, Middle_name, last_name, nickname,image, gender)
values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'Emma', 'Andrea', 'Pérez', 'M', NULL, 3);


INSERT INTO person(id,birthdate, first_name, Middle_name, last_name, nickname,image, gender)
values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'Jairo', 'Anibal', 'Solís', 'Jay', NULL, 10);


INSERT INTO person(id,birthdate, first_name, Middle_name, last_name, nickname,image, gender)
values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'Andrés', 'Patricio', 'Álvarez', 'Andy', NULL, 4);


INSERT INTO person(id,birthdate, first_name, Middle_name, last_name, nickname,image, gender)
values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'Gabriela', '', 'Chaves', 'Gab', NULL, 5);


INSERT INTO person(id,birthdate, first_name, Middle_name, last_name, nickname,image, gender)
values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'Gina', 'Elena', 'Sánchez', 'G', NULL, 3);


INSERT INTO person(id,birthdate, first_name, Middle_name, last_name, nickname,image, gender)
values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'Ania', '', 'Segura', '', NULL, 7);


INSERT INTO person(id,birthdate, first_name, Middle_name, last_name, nickname,image, gender)
values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'Jose', 'Juan', 'Sevilla', '', NULL, 2);


INSERT INTO person(id,birthdate, first_name, Middle_name, last_name, nickname,image, gender)
values(s_person.nextval ,  to_date('12/10/2000', 'MM/DD/YYYY'), 'Esteban', 'Alonso', 'Aguilar', 'Agui', NULL, 2);

--****************
--*   Admin      * 
--****************
