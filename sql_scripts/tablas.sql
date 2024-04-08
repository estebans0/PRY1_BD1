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

CREATE TABLE genre_by_prod ( -- 3
    id                          NUMBER(4)       CONSTRAINT genreByProd_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT genreByProd_idProduction_nn NOT NULL,
    id_genre                    NUMBER(4)       CONSTRAINT genreByProd_idGenre_nn NOT NULL
);

CREATE TABLE price_log ( -- 4
    id                          NUMBER(4)       CONSTRAINT priceLog_id_nn NOT NULL,
    price                       NUMBER(8)       CONSTRAINT priceLog_price_nn NOT NULL,
    log_date                    DATE            CONSTRAINT priceLog_logDate_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT priceLog_idProduction_nn NOT NULL
);

CREATE TABLE prod_company ( -- 5
    id                          NUMBER(4)       CONSTRAINT prodCompany_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT prodCompany_name_nn NOT NULL,
    id_country                  NUMBER(4)
);

CREATE TABLE prod_by_company ( -- 6
    id                          NUMBER(4)       CONSTRAINT prodByCompany_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT prodByCompany_idProduction_nn NOT NULL,
    id_company                  NUMBER(4)       CONSTRAINT prodByCompany_idCompany_nn NOT NULL
);

CREATE TABLE platform ( -- 7
    id                          NUMBER(4)       CONSTRAINT platform_id_nn NOT NULL,
    url                         VARCHAR2(60),
    name                        VARCHAR2(30)    CONSTRAINT platform_name_nn NOT NULL
);

CREATE TABLE prod_in_platform ( -- 8
    id                          NUMBER(4)       CONSTRAINT prodInPlatform_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT prodInPlatform_idProduction_nn NOT NULL,
    id_platform                 NUMBER(4)       CONSTRAINT prodInPlatform_idPlatform_nn NOT NULL
);

CREATE TABLE movie ( -- 9
    id_movie                    NUMBER(4)       CONSTRAINT movie_idMovie_nn NOT NULL
);

CREATE TABLE series ( -- 10
    id                          NUMBER(4)       PRIMARY KEY CONSTRAINT series_id_nn NOT NULL--Este debe ser un foreing key hacia production.
);

CREATE TABLE episode ( -- 11
    id_episode                  NUMBER(4)       CONSTRAINT episode_idEpisode_nn NOT NULL,
    episode_number              NUMBER(2)       CONSTRAINT episode_episodeNumber_nn NOT NULL,
    season                      NUMBER(2)       CONSTRAINT episode_Season_nn NOT NULL
);

CREATE TABLE prod_by_country ( -- 12
    id                          NUMBER(4)       CONSTRAINT prodCountry_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT prodCountry_idProduction_nn NOT NULL,
    id_country                  NUMBER(4)       CONSTRAINT prodCountry_idCountry_nn NOT NULL
);

CREATE TABLE country ( -- 13
    id                          NUMBER(4)       CONSTRAINT country_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT country_name_nn NOT NULL
);

CREATE TABLE province ( -- 14
    id                          NUMBER(4)       CONSTRAINT province_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT province_name_nn NOT NULL,
    id_country                  NUMBER(4)       CONSTRAINT province_idCountry_nn NOT NULL
);

CREATE TABLE city ( -- 17
    id                          NUMBER(4)       CONSTRAINT city_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT city_name_nn NOT NULL,
    id_province                 NUMBER(4)       CONSTRAINT city_idProvince_nn NOT NULL
);

CREATE TABLE address ( -- 18
    id                          NUMBER(4)       CONSTRAINT address_id_nn NOT NULL,
    detail                      VARCHAR2(180)   CONSTRAINT address_detail_nn NOT NULL,
    id_city                     NUMBER(4)       CONSTRAINT address_idCity_nn NOT NULL
);


CREATE TABLE person ( -- 19
    id                          NUMBER(4)      CONSTRAINT address_id_nn NOT NULL,
    birthdate                   DATE           CONSTRAINT person_birthdate_nn NOT NULL,
    firts_name                  VARCHAR2(20)   CONSTRAINT person_firstname_nn NOT NULL,
    middle_name                 VARCHAR(20)    CONSTRAINT person_midlename_nn NOT NULL,
    last_name                   VARCHAR2(20)   CONSTRAINT person_lastname_nn NOT NULL,
    nickname                    VARCHAR2(20)   CONSTRAINT person_nickname_nn NOT NULL,
    image                       blob,
    gender                      NUMBER(4),     --NULL = prefer not to say
    partner                     NUMBER(4)      CONSTRAINT Person_partner_nn NOT NULL
);

CREATE TABLE gender ( -- 19
    id                          NUMBER(4)       PRIMARY KEY CONSTRAINT gender_id_nn NOT NULL,
    name                        VARCHAR2(20)    CONSTRAINT gender_name_nn NOT NULL
);

CREATE TABLE parent_of ( -- 19
    id                          NUMBER(4)       CONSTRAINT parent_id_nn NOT NULL,
    id_parent                   NUMBER(4)       CONSTRAINT parent_parent_nn NOT NULL,
    id_child                    NUMBER(4)       CONSTRAINT parent_child_nn NOT NULL
);

CREATE TABLE rol (
    type                        NUMBER(4)       CONSTRAINT rol_id_nn NOT NULL,
    name                        VARCHAR2(20)    CONSTRAINT rol_name_nn NOT NULL,
    is_cast_member              NUMBER(1)       CONSTRAINT is_cast_member_nn NOT NULL,
    character_name              VARCHAR2(20)    CONSTRAINT rol_charname_nn NOT NULL
);
    

CREATE TABLE film_person ( -- 19 For celebrities and people of note in the productions
    id                          NUMBER(4)        CONSTRAINT parent_id_nn NOT NULL,
    heigth_cm                   NUMBER(3)        CONSTRAINT Actor_heigth_nn NOT NULL,
    trivia                      VARCHAR2(50)     CONSTRAINT Actor_trivia_nn NOT NULL,
    biography                   VARCHAR2(150)    CONSTRAINT Actor_trivia_nn NOT NULL,
    nacionality                 NUMBER(4)        CONSTRAINT Actor_nacionality_nn NOT NULL,
    adress                      VARCHAR2(150)    CONSTRAINT Actor_trivia_nn NOT NULL
);    

CREATE TABLE userr( --33
    id                          NUMBER(6)       CONSTRAINT user_id_nn not null,
    username                    VARCHAR2(30)    CONSTRAINT user_username_nn NOT NULL,
    password                    VARCHAR2(20)    CONSTRAINT user_password_nn NOT NULL,
    email                       VARCHAR2(20)    CONSTRAINT user_email_nn NOT NULL,
    legal_identification        VARCHAR2(8)     CONSTRAINT user_legalId_nn NOT NULL
);

Create table adminisrator( --34

);


create table regular_user(--35
    id                          NUMBER(4)       CONSTRAINT regularUser_id_nn NOT NULL,
    --is_banned                   NUMBER(1),  -- Funcionalidad extra aun no necesaria
    id_cart                     NUMBER(4)       CONSTRAINT userCart_fk_nn NOT NULL,
    id_recent_views             NUMBER(4)       CONSTRAINT userRecentViews_fk_nn NOT NULL,
    id_wishlist                 NUMBER(4)       CONSTRAINT userwishlist_fk_nn NOT NULL
    );

    
CREATE TABLE comment(--38
    id                           NUMBER(4)       CONSTRAINT comment_Id_nn NOT NULL,
    text_body                    VARCHAR2(140)   CONSTRAINT commentBody_nn,
    author                       NUMBER(4)       CONSTRAINT CommentAuthor_nn NOT NULL,                       
    id_review                    NUMBER(4)       CONSTRAINT Commentreply_nn NOT NULL --review al que esta respondiendo
    );
    
CREATE TABLE review(--39
    id                           NUMBER(4)       CONSTRAINT reviewId_nn NOT NULL,
    raiting                      NUMBER(1)       CONSTRAINT raitingreview_nn NOT NULL,
    title                        VARCHAR2(30)    CONSTRAINT reviewTitle_nn NOT NULL,
    author                       NUMBER(4)       CONSTRAINT reviewAuthor_nn NOT NULL,
    id_production                NUMBER(4)       CONSTRAINT reviewProduction_nn NOT NULL
    );

CREATE TABLE wish_list(--40
    id                           NUMBER(4)       CONSTRAINT wishlistId_nn NOT NULL,
    id_user                      NUMBER(4)       CONSTRAINT wishListUserid_nn NOT NULL,
    id_production                NUMBER(4)       CONSTRAINT WishListProdictionId_nn NOT NULL
    );

CREATE TABLE seen_recently(--41
    id                           NUMBER(4)       CONSTRAINT SeenRecentlyId_nn NOT NULL,
    id_user                      NUMBER(4)       CONSTRAINT SeenRecentlyUserid_nn NOT NULL,
    id_production                NUMBER(4)       CONSTRAINT SeenRecentlyProdictionId_nn NOT NULL
    );

CREATE TABLE cart(--42
    id                           NUMBER(4)       CONSTRAINT CartId_nn NOT NULL,
    id_user                      NUMBER(4)       CONSTRAINT CartUserid_nn NOT NULL,
    id_production                NUMBER(4)       CONSTRAINT CartProdictionId_nn NOT NULL
    );

CREATE TABLE purchase(--43
    id                           NUMBER(4)       CONSTRAINT purchaseId_nn NOT NULL,
    date                         DATE            CONSTRAINT purchase_logDate_nn NOT NULL,
    tax                          NUMBER(8,2)     CONSTRAINT purchase_taxId_nn NOT NULL,
    id_user                      NUMBER(4)       CONSTRAINT purchase_idUserId_nn NOT NULL,
    id_payment_method            NUMBER(4)       CONSTRAINT purchase_paymentMethod_nn NOT NULL
);

CREATE TABLE purchase_production(--44 for remembering
     id                          NUMBER(4)       CONSTRAINT purchaseProductionId_nn NOT NULL,
     id_production               NUMBER(4)       CONSTRAINT purchaseProductionIdProduction_nn NOT NULL,
     id_purchase                 NUMBER(4)       CONSTRAINT purchaseProductionIdPurchase_nn NOT NULL
);

CREATE TABLE payment_method(--45 payment method, remembered for quicker purchases
     id                          NUMBER(4)       CONSTRAINT paymentMethodId_nn NOT NULL,
     owner                       NUMBER(4)       CONSTRAINT PaymentOwner_nn NOT NULL
);

CREATE TABLE paypal(--46 Paypal mail acount for payments
    id                           NUMBER(4)       CONSTRAINT idPaypal_nn NOT NULL,
    acount                       VARCHAR2(20)    CONSTRAINT acountPaypal_nn NOT NULL
);

CREATE TABLE creditCard(--46  Creddit card for payment methods
    id                          NUMBER(4)       CONSTRAINT creditCardId_nn NOT NULL,
    name                        VARCHAR(20)     CONSTRAINT creditCardName NOT NULL,
    number                      NUMMBER(20)     CONSTRAINT creditCardnumber NOT NULL,
    expiration                  DATE            CONSTRAINT creditCardExpiration NOT NULL
);

CREATE TABLE production image(--47
    id                         
    id_production
    image
     
     
     
     
     
     
     
     