ALTER TABLE production
ADD
CONSTRAINT pk_production PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE genre
ADD
CONSTRAINT pk_genre PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE price_log
ADD
CONSTRAINT pk_priceLog PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE prod_company
ADD
CONSTRAINT pk_prodcompany PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE prod_by_company
ADD
CONSTRAINT pk_prodByCompany PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE platform
ADD
CONSTRAINT pk_platform PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE prod_in_platform
ADD
CONSTRAINT pk_prodinplatform PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE movie
ADD
CONSTRAINT pk_movie PRIMARY KEY (id_movie)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-- REVISAR ESTE CONSTRAINT PORQUE SE HIZO DESDE LA TABLA Y NO SE PUSO EN EL TABLESPACE CORRECTO
ALTER TABLE series
ADD
CONSTRAINT pk_series PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE episode
ADD
CONSTRAINT pk_episode PRIMARY KEY (id_episode)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE prod_by_country
ADD
CONSTRAINT pk_prodbycountry PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE country
ADD
CONSTRAINT pk_country PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE province
ADD
CONSTRAINT pk_province PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE city
ADD
CONSTRAINT pk_city PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--ALTER TABLE address
--ADD
--CONSTRAINT pk_address PRIMARY KEY (id)
--USING INDEX
--TABLESPACE pry_ind PCTFREE 20
--STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE person
ADD
CONSTRAINT pk_person PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-- REVISAR ESTE CONSTRAINT PORQUE SE HIZO DESDE LA TABLA Y NO SE PUSO EN EL TABLESPACE CORRECTO
ALTER TABLE gender
ADD
CONSTRAINT pk_gender PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE parent_of
ADD
CONSTRAINT pk_parentof PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE rol
ADD
CONSTRAINT pk_rol PRIMARY KEY (type)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE film_person
ADD
CONSTRAINT pk_filmperson PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE production_crew
ADD
CONSTRAINT pk_prodcrew PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);


ALTER TABLE userr
ADD
CONSTRAINT pk_userr PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE administrator
ADD
CONSTRAINT pk_administrator PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE regular_user
ADD
CONSTRAINT pk_regularuser PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE comentario
ADD
CONSTRAINT pk_comentario PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE review
ADD
CONSTRAINT pk_review PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE wish_list
ADD
CONSTRAINT pk_wishlist PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE cart
ADD
CONSTRAINT pk_cart PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE production_in_cart
ADD
CONSTRAINT pk_prodincart PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE purchase
ADD
CONSTRAINT pk_purchse PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE payment_method
ADD
CONSTRAINT pk_payment_method PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE production_image
ADD
CONSTRAINT pk_productionimage PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE identification_type
ADD
CONSTRAINT pk_identificationtype PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);


ALTER TABLE ROL MODIFY (name VARCHAR2(300));
ALTER TABLE GENRE MODIFY (name VARCHAR2(300));

-- Foreign keys 
ALTER TABLE production
ADD(
CONSTRAINT fk_id_createdby FOREIGN KEY (created_by) REFERENCES administrator(id)
);

ALTER TABLE production
MODIFY (synopsis VARCHAR2(1000));
ALTER TABLE production
MODIFY (trailer VARCHAR2(500));

ALTER TABLE genre_by_prod
ADD(
CONSTRAINT fk_id_production FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE genre_by_prod
ADD(
CONSTRAINT fk_id_genre FOREIGN KEY (id_genre) REFERENCES genre(id)
);

ALTER TABLE price_log
ADD(
CONSTRAINT fk_id_production_pricelog FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE prod_company
ADD(
CONSTRAINT fk_id_country_prodCompany FOREIGN KEY (id) REFERENCES country(id)
);

ALTER TABLE prod_by_company
ADD(
CONSTRAINT fk_id_production_pxc FOREIGN KEY (id_production) REFERENCES production(id),
CONSTRAINT fk_id_company_pxc FOREIGN KEY(id_company) REFERENCES prod_company(id)
);

ALTER TABLE prod_in_platform
ADD(
CONSTRAINT fk_id_production_pip FOREIGN KEY (id_production) REFERENCES production(id),
CONSTRAINT fk_id_platform_pip FOREIGN KEY(id_platform) REFERENCES platform(id)
);  

ALTER TABLE movie
ADD(
CONSTRAINT fk_id_production_mov FOREIGN KEY (id_movie) REFERENCES production(id)
);

ALTER TABLE episode
ADD(
CONSTRAINT fk_id_production_epi FOREIGN KEY (id_episode) REFERENCES production(id)
);
-- revisar la referencia n->1 de serie
ALTER TABLE episode
ADD(
CONSTRAINT fk_id_season_epi FOREIGN KEY (season) REFERENCES production(id)
);

ALTER TABLE prod_by_country
ADD(
CONSTRAINT FK_ID_CUNTRY_PBC FOREIGN KEY (id_production) REFERENCES production(id),
CONSTRAINT FK_ID_PRODUCTION_PBC FOREIGN KEY (id_country) REFERENCES country(id)
);

ALTER TABLE province
ADD(
CONSTRAINT FK_ID_CUNTRY_PROV FOREIGN KEY (id_country) REFERENCES country(id)
);

ALTER TABLE city
ADD(
CONSTRAINT FK_ID_PROVINCE_CITY FOREIGN KEY (id_province) REFERENCES province(id)
);

/* Esto no lo usamos
ALTER TABLE film_person
ADD(
CONSTRAINT FK_ID_CITY_FPERSON FOREIGN KEY (id_city) REFERENCES city(id)
); */

ALTER TABLE person
ADD(
CONSTRAINT FK_ID_GENDER FOREIGN KEY (gender) REFERENCES gender(id)
);

--ALTER TABLE person
--ADD(
--CONSTRAINT FK_ID_PARTNER FOREIGN KEY (id_person) REFERENCES person(id)
--);


ALTER TABLE film_person
ADD(
CONSTRAINT fk_id_person_fp FOREIGN KEY (id) REFERENCES person(id)
);

ALTER TABLE film_person
MODIFY (trivia VARCHAR2(1000));

ALTER TABLE film_person
MODIFY (biography VARCHAR2(1000));

ALTER TABLE production_crew
ADD(
CONSTRAINT fk_id_crew_member FOREIGN KEY (id_crew_member) REFERENCES film_person(id),
CONSTRAINT fk_id_production_pcrew FOREIGN KEY (id_production) REFERENCES production(id),
CONSTRAINT fk_id_rol_pcrew FOREIGN KEY (id) REFERENCES rol(type)
);


ALTER TABLE film_person
ADD(
CONSTRAINT fk_id_rol FOREIGN KEY (rol) REFERENCES rol(type)
);

ALTER TABLE parent_of
ADD(
CONSTRAINT fk_id_parent FOREIGN KEY (id_parent) REFERENCES person(id),
CONSTRAINT fk_id_child FOREIGN KEY (id_child) REFERENCES person(id)
);


ALTER TABLE partner_of
ADD(
CONSTRAINT fk_id_partner1 FOREIGN KEY (id_partner1) REFERENCES person(id),
CONSTRAINT fk_id_partner2 FOREIGN KEY (id_partner2) REFERENCES person(id)
);

-- no existe la tabla crew_member
--ALTER TABLE crew_member
--ADD(
--CONSTRAINT fk_id_crew_member FOREIGN KEY (id_crew_member) REFERENCES film_person(id)
--);

ALTER TABLE userr
ADD(
CONSTRAINT fk_id_user FOREIGN KEY (id) REFERENCES person(id)
);

ALTER TABLE administrator
ADD(
CONSTRAINT fk_id_admin FOREIGN KEY (id) REFERENCES userr(id)
);

ALTER TABLE regular_user
ADD(
CONSTRAINT fk_id_ruser FOREIGN KEY (id) REFERENCES userr(id)
);

ALTER TABLE comentario
ADD(
CONSTRAINT fk_author FOREIGN KEY (author) REFERENCES regular_user(id),
CONSTRAINT fk_id_review FOREIGN KEY (id_review) REFERENCES review(id)
);

ALTER TABLE review
ADD(
CONSTRAINT fk_author_rev FOREIGN KEY (author) REFERENCES regular_user(id),
CONSTRAINT fk_id_production_rev FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE wish_list
ADD(
CONSTRAINT fk_user_wl FOREIGN KEY (id_user) REFERENCES regular_user(id),
CONSTRAINT fk_id_production_wl FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE production_in_cart
ADD(
CONSTRAINT fk_cart_pic FOREIGN KEY (id_cart) REFERENCES cart(id),
CONSTRAINT fk_user_pic FOREIGN KEY (id_user) REFERENCES regular_user(id),
CONSTRAINT fk_id_production_pic FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE purchase
ADD(
CONSTRAINT fk_cart_purchase FOREIGN KEY (id_cart) REFERENCES cart(id),
CONSTRAINT fk_user_purchase FOREIGN KEY (id_user) REFERENCES regular_user(id),
CONSTRAINT fk_id_payment_purchase FOREIGN KEY (id_payment_method) REFERENCES payment_method(id)
);

ALTER TABLE payment_method
ADD(
CONSTRAINT fk_owner_payMethod FOREIGN KEY (owner) REFERENCES regular_user(id)
);

ALTER TABLE production_image
ADD(
CONSTRAINT fk_id_production_pimage FOREIGN KEY (id_production) REFERENCES production(id)
);


CREATE SEQUENCE s_production
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_genre
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_genre_by_prod
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_price_log
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_prod_company
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_platform
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_prod_in_platform
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_movie
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_series
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_episode
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_prod_by_country
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_country
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;
/* Comentadas porque no se usan
CREATE SEQUENCE s_province
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_city
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;
*/
CREATE SEQUENCE s_person
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_gender
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_parent_of
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_partner_of
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_rol
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_film_person
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_production_crew
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_userr
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_administrator
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_regular_user
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_comentario
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_review
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_wish_list
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_cart
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_production_in_cart
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_purchase
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_payament_method
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_production_image
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_identification_type
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;
ALTER TABLE production
ADD
CONSTRAINT pk_production PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE genre
ADD
CONSTRAINT pk_genre PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE price_log
ADD
CONSTRAINT pk_priceLog PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE prod_company
ADD
CONSTRAINT pk_prodcompany PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE prod_by_company
ADD
CONSTRAINT pk_prodByCompany PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE platform
ADD
CONSTRAINT pk_platform PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE prod_in_platform
ADD
CONSTRAINT pk_prodinplatform PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE movie
ADD
CONSTRAINT pk_movie PRIMARY KEY (id_movie)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-- REVISAR ESTE CONSTRAINT PORQUE SE HIZO DESDE LA TABLA Y NO SE PUSO EN EL TABLESPACE CORRECTO
ALTER TABLE series
ADD
CONSTRAINT pk_series PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE episode
ADD
CONSTRAINT pk_episode PRIMARY KEY (id_episode)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE prod_by_country
ADD
CONSTRAINT pk_prodbycountry PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE country
ADD
CONSTRAINT pk_country PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE province
ADD
CONSTRAINT pk_province PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE city
ADD
CONSTRAINT pk_city PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--ALTER TABLE address
--ADD
--CONSTRAINT pk_address PRIMARY KEY (id)
--USING INDEX
--TABLESPACE pry_ind PCTFREE 20
--STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE person
ADD
CONSTRAINT pk_person PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-- REVISAR ESTE CONSTRAINT PORQUE SE HIZO DESDE LA TABLA Y NO SE PUSO EN EL TABLESPACE CORRECTO
ALTER TABLE gender
ADD
CONSTRAINT pk_gender PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE parent_of
ADD
CONSTRAINT pk_parentof PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE rol
ADD
CONSTRAINT pk_rol PRIMARY KEY (type)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE film_person
ADD
CONSTRAINT pk_filmperson PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE production_crew
ADD
CONSTRAINT pk_prodcrew PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);


ALTER TABLE userr
ADD
CONSTRAINT pk_userr PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE administrator
ADD
CONSTRAINT pk_administrator PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE regular_user
ADD
CONSTRAINT pk_regularuser PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE comentario
ADD
CONSTRAINT pk_comentario PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE review
ADD
CONSTRAINT pk_review PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE wish_list
ADD
CONSTRAINT pk_wishlist PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE cart
ADD
CONSTRAINT pk_cart PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE production_in_cart
ADD
CONSTRAINT pk_prodincart PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE purchase
ADD
CONSTRAINT pk_purchse PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE payment_method
ADD
CONSTRAINT pk_payment_method PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE production_image
ADD
CONSTRAINT pk_productionimage PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE identification_type
ADD
CONSTRAINT pk_identificationtype PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE cast_of_production
ADD
CONSTRAINT pk_cast_of_production PRIMARY KEY (id)
USING INDEX
TABLESPACE pry_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);


-- Foreign keys 
ALTER TABLE production
ADD(
CONSTRAINT fk_id_createdby FOREIGN KEY (created_by) REFERENCES administrator(id)
);

ALTER TABLE production
MODIFY (synopsis VARCHAR2(1000));
ALTER TABLE production
MODIFY (trailer VARCHAR2(500));

ALTER TABLE genre_by_prod
ADD(
CONSTRAINT fk_id_production FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE genre_by_prod
ADD(
CONSTRAINT fk_id_genre FOREIGN KEY (id_genre) REFERENCES genre(id)
);

ALTER TABLE price_log
ADD(
CONSTRAINT fk_id_production_pricelog FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE prod_company
ADD(
CONSTRAINT fk_id_country_prodCompany FOREIGN KEY (id) REFERENCES country(id)
);

ALTER TABLE prod_by_company
ADD(
CONSTRAINT fk_id_production_pxc FOREIGN KEY (id_production) REFERENCES production(id),
CONSTRAINT fk_id_company_pxc FOREIGN KEY(id_company) REFERENCES prod_company(id)
);

ALTER TABLE prod_in_platform
ADD(
CONSTRAINT fk_id_production_pip FOREIGN KEY (id_production) REFERENCES production(id),
CONSTRAINT fk_id_platform_pip FOREIGN KEY(id_platform) REFERENCES platform(id)
);  

ALTER TABLE series
ADD(
CONSTRAINT fk_id_production_ser FOREIGN KEY (id) REFERENCES production(id)
);

ALTER TABLE movie
ADD(
CONSTRAINT fk_id_production_mov FOREIGN KEY (id_movie) REFERENCES production(id)
);

ALTER TABLE episode
ADD(
CONSTRAINT fk_id_production_epi FOREIGN KEY (id_episode) REFERENCES production(id)
);
-- revisar la referencia n->1 de serie
ALTER TABLE episode
ADD(
CONSTRAINT fk_id_season_epi FOREIGN KEY (season) REFERENCES production(id)
);

ALTER TABLE prod_by_country
ADD(
CONSTRAINT FK_ID_CUNTRY_PBC FOREIGN KEY (id_production) REFERENCES production(id),
CONSTRAINT FK_ID_PRODUCTION_PBC FOREIGN KEY (id_country) REFERENCES country(id)
);

ALTER TABLE province
ADD(
CONSTRAINT FK_ID_CUNTRY_PROV FOREIGN KEY (id_country) REFERENCES country(id)
);

ALTER TABLE city
ADD(
CONSTRAINT FK_ID_PROVINCE_CITY FOREIGN KEY (id_province) REFERENCES province(id)
);

/* Esto no lo usamos
ALTER TABLE film_person
ADD(
CONSTRAINT FK_ID_CITY_FPERSON FOREIGN KEY (id_city) REFERENCES city(id)
); */

ALTER TABLE person
ADD(
CONSTRAINT FK_ID_GENDER FOREIGN KEY (gender) REFERENCES gender(id)
);

--ALTER TABLE person
--ADD(
--CONSTRAINT FK_ID_PARTNER FOREIGN KEY (id_person) REFERENCES person(id)
--);


ALTER TABLE film_person
ADD(
CONSTRAINT fk_id_person_fp FOREIGN KEY (id) REFERENCES person(id)
);

ALTER TABLE film_person
MODIFY (trivia VARCHAR2(1000));

ALTER TABLE film_person
MODIFY (biography VARCHAR2(1000))
drop column id_city;

ALTER TABLE production_crew
ADD(
CONSTRAINT fk_id_crew_member FOREIGN KEY (id_crew_member) REFERENCES film_person(id),
CONSTRAINT fk_id_production_pcrew FOREIGN KEY (id_production) REFERENCES production(id),
CONSTRAINT fk_id_rol_pcrew FOREIGN KEY (id_rol) REFERENCES rol(type)
);


ALTER TABLE film_person
ADD(
CONSTRAINT fk_id_rol FOREIGN KEY (rol) REFERENCES rol(type)
);

ALTER TABLE parent_of
ADD(
CONSTRAINT fk_id_parent FOREIGN KEY (id_parent) REFERENCES person(id),
CONSTRAINT fk_id_child FOREIGN KEY (id_child) REFERENCES person(id)
);


ALTER TABLE partner_of
ADD(
CONSTRAINT fk_id_partner1 FOREIGN KEY (id_partner1) REFERENCES person(id),
CONSTRAINT fk_id_partner2 FOREIGN KEY (id_partner2) REFERENCES person(id)
);



-- no existe la tabla crew_member
--ALTER TABLE crew_member
--ADD(
--CONSTRAINT fk_id_crew_member FOREIGN KEY (id_crew_member) REFERENCES film_person(id)
--);

ALTER TABLE PRODUCTION MODIFY (SYNOPSIS VARCHAR2(2000));
ALTER TABLE PRODUCTION MODIFY (TRAILER VARCHAR2(200));

ALTER TABLE userr
ADD(
CONSTRAINT fk_id_user FOREIGN KEY (id) REFERENCES person(id)
);

ALTER TABLE administrator
ADD(
CONSTRAINT fk_id_admin FOREIGN KEY (id) REFERENCES userr(id)
);

ALTER TABLE regular_user
ADD(
CONSTRAINT fk_id_ruser FOREIGN KEY (id) REFERENCES userr(id)
);

ALTER TABLE comentario
ADD(
CONSTRAINT fk_author FOREIGN KEY (author) REFERENCES regular_user(id),
CONSTRAINT fk_id_review FOREIGN KEY (id_review) REFERENCES review(id)
);

ALTER TABLE review
ADD(
CONSTRAINT fk_author_rev FOREIGN KEY (author) REFERENCES regular_user(id),
CONSTRAINT fk_id_production_rev FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE wish_list
ADD(
CONSTRAINT fk_user_wl FOREIGN KEY (id_user) REFERENCES regular_user(id),
CONSTRAINT fk_id_production_wl FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE production_in_cart
ADD(
CONSTRAINT fk_cart_pic FOREIGN KEY (id_cart) REFERENCES cart(id),
CONSTRAINT fk_user_pic FOREIGN KEY (id_user) REFERENCES regular_user(id),
CONSTRAINT fk_id_production_pic FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE purchase
ADD(
CONSTRAINT fk_cart_purchase FOREIGN KEY (id_cart) REFERENCES cart(id),
CONSTRAINT fk_user_purchase FOREIGN KEY (id_user) REFERENCES regular_user(id),
CONSTRAINT fk_id_payment_purchase FOREIGN KEY (id_payment_method) REFERENCES payment_method(id)
);

ALTER TABLE payment_method
ADD(
CONSTRAINT fk_owner_payMethod FOREIGN KEY (owner) REFERENCES regular_user(id)
);

ALTER TABLE production_image
ADD(
CONSTRAINT fk_id_production_pimage FOREIGN KEY (id_production) REFERENCES production(id)
);

ALTER TABLE cast_of_production
ADD(
CONSTRAINT FK_id_cast_member_cop FOREIGN KEY (id_cast_member) REFERENCES production(id),
CONSTRAINT FK_production_id_cop FOREIGN KEY (production_id) REFERENCES country(id)
);


CREATE SEQUENCE s_production
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_genre
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_genre_by_prod
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_price_log
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_prod_company
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_platform
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_prod_in_platform
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_movie
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_series
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_episode
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_prod_by_country
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;


CREATE SEQUENCE s_prod_by_company
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_country
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_province
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_city
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_person
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_gender
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_parent_of
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_partner_of
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_rol
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_film_person
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_production_crew
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_userr
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_administrator
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_regular_user
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_comentario
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_review
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_wish_list
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_cart
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_production_in_cart
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_purchase
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_payament_method
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_production_image
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_identification_type
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;

CREATE SEQUENCE s_cast_of_production
start with 1
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;
