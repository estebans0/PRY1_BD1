CREATE TABLE production ( -- 1 Production for all series and movies
    id                          NUMBER(4)       CONSTRAINT production_id_nn NOT NULL,
    airdate                     DATE            CONSTRAINT production_airdate_nn NOT NULL,
    title                       VARCHAR2(60)    CONSTRAINT production_title_nn NOT NULL,
    run_time                    NUMBER(4)       CONSTRAINT production_runTime_nn NOT NULL,
    is_public                   NUMBER(1)       CONSTRAINT production_isPublic_nn NOT NULL,
    synopsis                    varchar2(140)   CONSTRAINT production_idSynopsis_nn NOT NULL,
    trailer                     varchar(50),
    created_by                  NUMBER(4)       CONSTRAINT production_createdBy_nn NOT NULL
);

CREATE TABLE genre ( -- 2 Genre of the productions
    id                          NUMBER(4)       CONSTRAINT genre_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT genre_name_nn NOT NULL,
    characteristics             VARCHAR2(90)
);

CREATE TABLE genre_by_prod ( -- 3 N-N relation between genre and production
    id                          NUMBER(4)       CONSTRAINT genreByProd_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT genreByProd_idProduction_nn NOT NULL,
    id_genre                    NUMBER(4)       CONSTRAINT genreByProd_idGenre_nn NOT NULL
);
 
CREATE TABLE price_log ( -- 4 bitacora de precios
    id                          NUMBER(4)       CONSTRAINT priceLog_id_nn NOT NULL,
    price                       NUMBER(8)       CONSTRAINT priceLog_price_nn NOT NULL,
    log_date                    DATE            CONSTRAINT priceLog_logDate_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT priceLog_idProduction_nn NOT NULL
);

CREATE TABLE prod_company ( -- 5 productora de la produccion
    id                          NUMBER(4)       CONSTRAINT prodCompany_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT prodCompany_name_nn NOT NULL,
    id_country                  NUMBER(4)
);

CREATE TABLE prod_by_company ( -- 6 relacion NN entre producion y compa�ia productora
    id                          NUMBER(4)       CONSTRAINT prodByCompany_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT prodByCompany_idProduction_nn NOT NULL,
    id_company                  NUMBER(4)       CONSTRAINT prodByCompany_idCompany_nn NOT NULL
);

CREATE TABLE platform ( -- 7    Plataforma donde esta disponible una produccion
    id                          NUMBER(4)       CONSTRAINT platform_id_nn NOT NULL,
    url                         VARCHAR2(60),
    name                        VARCHAR2(30)    CONSTRAINT platform_name_nn NOT NULL
);

CREATE TABLE prod_in_platform ( -- 8    N-N relacion entre produccion y plataformas
    id                          NUMBER(4)       CONSTRAINT prodInPlatform_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT prodInPlatform_idProduction_nn NOT NULL,
    id_platform                 NUMBER(4)       CONSTRAINT prodInPlatform_idPlatform_nn NOT NULL
);

CREATE TABLE movie ( -- 9       para recordar que producciones son peliculas(???)
    id_movie                    NUMBER(4)       CONSTRAINT movie_idMovie_nn NOT NULL
);

CREATE TABLE series ( -- 10     para recordar que producciones son series
    id                          NUMBER(4)       PRIMARY KEY CONSTRAINT series_id_nn NOT NULL--Este debe ser un foreing key hacia production.
);

CREATE TABLE episode ( -- 11    episodios de una serie
    id_episode                  NUMBER(4)       CONSTRAINT episode_idEpisode_nn NOT NULL,
    episode_number              NUMBER(2)       CONSTRAINT episode_episodeNumber_nn NOT NULL,
    season                      NUMBER(2)       CONSTRAINT episode_Season_nn NOT NULL
);

CREATE TABLE prod_by_country ( -- 12 Relacion entre produccion y pais
    id                          NUMBER(4)       CONSTRAINT prodCountry_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT prodCountry_idProduction_nn NOT NULL,
    id_country                  NUMBER(4)       CONSTRAINT prodCountry_idCountry_nn NOT NULL
);

CREATE TABLE country ( -- 13 guarda los paises
    id                          NUMBER(4)       CONSTRAINT country_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT country_name_nn NOT NULL
);

CREATE TABLE province ( -- 14 provincia, para una subdivision m�s exacta
    id                          NUMBER(4)       CONSTRAINT province_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT province_name_nn NOT NULL,
    id_country                  NUMBER(4)       CONSTRAINT province_idCountry_nn NOT NULL
);

CREATE TABLE city ( -- 15 Ciudad, para una subdivision exacta de direccion
    id                          NUMBER(4)       CONSTRAINT city_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT city_name_nn NOT NULL,
    id_province                 NUMBER(4)       CONSTRAINT city_idProvince_nn NOT NULL
);

CREATE TABLE address ( -- 16 Direccion, tiene la ciudad a donde pertenece
    id                          NUMBER(4)       CONSTRAINT address_id_nn NOT NULL,
    detail                      VARCHAR2(180)   CONSTRAINT address_detail_nn NOT NULL,
    id_city                     NUMBER(4)       CONSTRAINT address_idCity_nn NOT NULL
);


CREATE TABLE person ( -- 17 para todos los seres humanos en el sistema, incluyendo a los usuarios.
    id                          NUMBER(4)      CONSTRAINT address_id_nn NOT NULL,
    birthdate                   DATE           CONSTRAINT person_birthdate_nn NOT NULL,
    firts_name                  VARCHAR2(20)   CONSTRAINT person_firstname_nn NOT NULL,
    middle_name                 VARCHAR(20)    CONSTRAINT person_midlename_nn NOT NULL,
    last_name                   VARCHAR2(20)   CONSTRAINT person_lastname_nn NOT NULL,
    nickname                    VARCHAR2(20)   CONSTRAINT person_nickname_nn NOT NULL,
    image                       BLOB,
    gender                      NUMBER(4),     --NULL = prefer not to say
    partner                     NUMBER(4)      CONSTRAINT Person_partner_nn NOT NULL
);

CREATE TABLE gender ( -- 18 genero, es m�s apropiado.
    id                          NUMBER(4)       PRIMARY KEY CONSTRAINT gender_id_nn NOT NULL,
    name                        VARCHAR2(20)    CONSTRAINT gender_name_nn NOT NULL
);

CREATE TABLE parent_of ( -- 19 para recordar relaciones de padres
    id                          NUMBER(4)       CONSTRAINT parent_id_nn NOT NULL,
    id_parent                   NUMBER(4)       CONSTRAINT parent_parent_nn NOT NULL,
    id_child                    NUMBER(4)       CONSTRAINT parent_child_nn NOT NULL
);

CREATE TABLE rol ( --20 Rol que hace una persona en una pelicula
    type                        NUMBER(4)       CONSTRAINT rol_id_nn NOT NULL,
    name                        VARCHAR2(20)    CONSTRAINT rol_name_nn NOT NULL,
    is_cast_member              NUMBER(1)       CONSTRAINT is_cast_member_nn NOT NULL,
    character_name              VARCHAR2(20)    CONSTRAINT rol_charname_nn NOT NULL
);
    

CREATE TABLE film_person ( -- 21 For celebrities and people of note in the productions
    id                          NUMBER(4)        CONSTRAINT parent_id_nn NOT NULL,
    heigth_cm                   NUMBER(3)        CONSTRAINT Actor_heigth_nn NOT NULL,
    trivia                      VARCHAR2(50)     CONSTRAINT Actor_trivia_nn NOT NULL,
    biography                   VARCHAR2(150)    CONSTRAINT Actor_trivia_nn NOT NULL,
    nacionality                 NUMBER(4)        CONSTRAINT Actor_nacionality_nn NOT NULL,
    adress                      VARCHAR2(150)    CONSTRAINT Actor_trivia_nn NOT NULL
);    

CREATE TABLE userr( --22 for users, both admins and regular users
    id                          NUMBER(4)       CONSTRAINT user_id_nn not null,
    username                    VARCHAR2(30)    CONSTRAINT user_username_nn NOT NULL,
    password                    VARCHAR2(20)    CONSTRAINT user_password_nn NOT NULL,
    email                       VARCHAR2(20)    CONSTRAINT user_email_nn NOT NULL,
    legal_identification        VARCHAR2(8)     CONSTRAINT user_legalId_nn NOT NULL,
    type_of_identification      NUMBER(4)       CONSTRAINT type_of_id_nn NOT NULL
);

Create table adminisrator( --23 for remembering who is an admin in the system
    id        NUMBER(4)       CONSTRAINT admin_id_nn not null
);


create table regular_user(--24 for regular users
    id                          NUMBER(4)       CONSTRAINT regularUser_id_nn NOT NULL,
    --is_banned                   NUMBER(1),  -- Funcionalidad extra aun no necesaria
    id_cart                     NUMBER(4)       CONSTRAINT userCart_fk_nn NOT NULL,
    id_wishlist                 NUMBER(4)       CONSTRAINT userwishlist_fk_nn NOT NULL
    );

    
CREATE TABLE comment(--25 for replies to reviews
    id                           NUMBER(4)       CONSTRAINT comment_Id_nn NOT NULL,
    text_body                    VARCHAR2(140)   CONSTRAINT commentBody_nn,
    author                       NUMBER(4)       CONSTRAINT CommentAuthor_nn NOT NULL,                       
    id_review                    NUMBER(4)       CONSTRAINT Commentreply_nn NOT NULL --review al que esta respondiendo
    );
    
CREATE TABLE review(--26 for reviews of a production
    id                           NUMBER(4)       CONSTRAINT reviewId_nn NOT NULL,
    raiting                      NUMBER(1)       CONSTRAINT raitingreview_nn NOT NULL,
    title                        VARCHAR2(30)    CONSTRAINT reviewTitle_nn NOT NULL,
    author                       NUMBER(4)       CONSTRAINT reviewAuthor_nn NOT NULL,
    id_production                NUMBER(4)       CONSTRAINT reviewProduction_nn NOT NULL
    );

CREATE TABLE wish_list(--27 for wishlisting productions
    id                           NUMBER(4)       CONSTRAINT wishlistId_nn NOT NULL,
    id_user                      NUMBER(4)       CONSTRAINT wishListUserid_nn NOT NULL,
    id_production                NUMBER(4)       CONSTRAINT WishListProdictionId_nn NOT NULL
    );

CREATE TABLE cart(--28  for buying a series of movies
    id                           NUMBER(4)       CONSTRAINT CartId_nn NOT NULL,
    id_user                      NUMBER(4)       CONSTRAINT CartUserid_nn NOT NULL,
    id_production                NUMBER(4)       CONSTRAINT CartProdictionId_nn NOT NULL
    );

CREATE TABLE purchase(--29 for remembering purchases(?)
    id                           NUMBER(4)       CONSTRAINT purchaseId_nn NOT NULL,
    date                         DATE            CONSTRAINT purchase_logDate_nn NOT NULL,
    --tax                          NUMBER(8,2)     CONSTRAINT purchase_taxId_nn NOT NULL,para qu�? ._.
    id_user                      NUMBER(4)       CONSTRAINT purchase_idUserId_nn NOT NULL,
    id_payment_method            NUMBER(4)       CONSTRAINT purchase_paymentMethod_nn NOT NULL
);

CREATE TABLE purchase_production(--30 for remembering
     id                          NUMBER(4)       CONSTRAINT purchaseProductionId_nn NOT NULL,
     id_production               NUMBER(4)       CONSTRAINT purchaseProductionIdProduction_nn NOT NULL,
     id_purchase                 NUMBER(4)       CONSTRAINT purchaseProductionIdPurchase_nn NOT NULL
);

CREATE TABLE payment_method(--31 payment method, remembered for quicker purchases
     id                          NUMBER(4)       CONSTRAINT paymentMethodId_nn NOT NULL,
     owner                       NUMBER(4)       CONSTRAINT PaymentOwner_nn NOT NULL
     cc_owner_name               VARCHAR(25)     CONSTRAINT payment_method_name_nn NOT NULL,
     cc_number                   NUMBER(20)      CONSTRAINT payment_method_ccnum_nn NOT NULL,
     cc_expiration               DATE            CONSTRAINT payment_method_expiration_nn NOT NULL
);

CREATE TABLE production_image(--32 for the images shown in movies
    id                          NUMBER(4)       CONSTRAINT productionImage_id_nn NOT NULL,    
    id_production               NUMBER(4)       CONSTRAINT prodImage_productionid_nn NOT NULL,
    image                       BLOB            CONSTRAINT production_image_nn NOT NULL
    );
     
CREATE TABLE identification_type(--33 for the type of identification the user is using.
    id                          NUMBER(4)       CONSTRAINT identy_id_nn NOT NUL,
    name                        VARCHAR(20)     CONSTRAINT identification_name_nn
    );  
     
     
     
     
     
     