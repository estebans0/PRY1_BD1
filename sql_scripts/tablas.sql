CREATE TABLE production ( -- 1
    id                          NUMBER(4)       CONSTRAINT production_id_nn NOT NULL,
    airdate                     DATE            CONSTRAINT production_airdate_nn NOT NULL,
    title                       VARCHAR2(60)    CONSTRAINT production_title_nn NOT NULL,
    run_time                    NUMBER(4)       CONSTRAINT production_runTime_nn NOT NULL,
    is_public                   NUMBER(1,0)     CONSTRAINT production_isPublic_nn NOT NULL,
    created_by                  NUMBER(4)       CONSTRAINT production_createdBy_nn NOT NULL,
    id_synopsis                 NUMBER(4)       CONSTRAINT production_idSynopsis_nn NOT NULL
);

CREATE TABLE genre ( -- 2
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
    id_movie                    NUMBER(4)       CONSTRAINT movie_idMovie_nn NOT NULL,
    id_catalog                  NUMBER(4)       CONSTRAINT movie_idCatalog_nn NOT NULL
);

CREATE TABLE catalog ( -- 10
    id                          NUMBER(4)       CONSTRAINT catalog_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT catalog_name_nn NOT NULL
);

CREATE TABLE series ( -- 11
    id                          NUMBER(4)       CONSTRAINT series_id_nn NOT NULL,
    title                       VARCHAR2(30)    CONSTRAINT series_title_nn NOT NULL,
    is_public                   NUMBER(1,0)     CONSTRAINT series_isPublic_nn NOT NULL,
    id_catalog                  NUMBER(4)       CONSTRAINT series_idCatalog_nn NOT NULL,
    id_synopsis                 NUMBER(4)
);

CREATE TABLE season ( -- 12
    id                          NUMBER(4)       CONSTRAINT season_id_nn NOT NULL,
    season_number               NUMBER(2)       CONSTRAINT season_seasonNumber_nn NOT NULL,
    is_public                   NUMBER(1,0)     CONSTRAINT season_isPublic_nn NOT NULL,
    id_series                   NUMBER(4)       CONSTRAINT season_idSeries_nn NOT NULL,
    id_synopsis                 NUMBER(4)
);

CREATE TABLE episode ( -- 13
    id_episode                  NUMBER(4)       CONSTRAINT episode_idEpisode_nn NOT NULL,
    episode_number              NUMBER(2)       CONSTRAINT episode_episodeNumber_nn NOT NULL,
    id_season                   NUMBER(4)       CONSTRAINT episode_idSeason_nn NOT NULL
);

CREATE TABLE prod_country ( -- 14
    id                          NUMBER(4)       CONSTRAINT prodCountry_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT prodCountry_idProduction_nn NOT NULL,
    id_country                  NUMBER(4)       CONSTRAINT prodCountry_idCountry_nn NOT NULL
);

CREATE TABLE country ( -- 15
    id                          NUMBER(4)       CONSTRAINT country_id_nn NOT NULL,
    name                        VARCHAR2(30)    CONSTRAINT country_name_nn NOT NULL
);

CREATE TABLE province ( -- 16
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

CREATE TABLE address_filmP ( -- 19
    id                          NUMBER(4)       CONSTRAINT addressFilmP_id_nn NOT NULL,
    id_person                   NUMBER(4)       CONSTRAINT addressFilmP_idPerson_nn NOT NULL,
    id_address                  NUMBER(4)       CONSTRAINT addressFilmP_idAddress_nn NOT NULL
);

CREATE TABLE media_type    ( --30
    id                          NUMBER(4)       CONSTRAINT mediaTypeid_nn NOT NULL,
    name                        VARCHAR2(20)    CONSTRAINT metyaTypeName_nn NOT NULL
);

CREATE TABLE media_of_production (--31
    id                          NUMBER(4)       CONSTRAINT mediaOfProduction_id_nn NOT NULL,
    id_production               NUMBER(4)       CONSTRAINT FkMoP_idProduction_nn NOT NULL,
    id_supportMedia             NUMBER(4)       CONSTRAINT FkMoP_supporMediaID_id_nn NOT NULL
);

CREATE TABLE media_of_crew_member (--32
    id                          NUMBER(4)       CONSTRAINT mediaOfProduction_id_nn NOT NULL,
    id_crew_member              NUMBER(4)       CONSTRAINT FkMoCM_crewMember_id_nn NOT NULL,
    id_supportMedia             NUMBER(4)       CONSTRAINT FkMoCM_supporMediaID_id_nn NOT NULL
);


CREATE TABLE userr( --33
    id                          NUMBER(6)       CONSTRAINT user_id_nn not null,
    username                    VARCHAR2(30)    CONSTRAINT user_username_nn NOT NULL,
    password                    VARCHAR2(20)    CONSTRAINT user_password_nn NOT NULL,
    email                       VARCHAR2(20)    CONSTRAINT user_email_nn NOT NULL,
    legal_identification        VARCHAR2(8)     CONSTRAINT user_legalId_nn NOT NULL
);

Create table adminisrator( --34
    id                          NUMBER(4)       PRIMARY KEY CONSTRAINT admin_id_nn NOT NULL
);

create table regular_user(--35
    id_regular_user             NUMBER(4)       PRIMARY KEY CONSTRAINT regularUser_id_nn NOT NULL,
    is_banned                   NUMBER(1), -- Si no esta baneado esto es nulo. SI lo esta se pone cualquier cosa aqui
    id_cart                     NUMBER(4)       CONSTRAINT userCart_fk_nn NOT NULL,
    id_recent_views             NUMBER(4)       CONSTRAINT userRecentViews_fk_nn NOT NULL,
    id_wishlist                 NUMBER(4)       CONSTRAINT userwishlist_fk_nn NOT NULL
    );

create table text( --36
    id                           NUMBER(4)       PRIMARY KEY CONSTRAINT text_textId_nn NOT NULL,
    body                         VARCHAR2(280)   CONSTRAINT textBody_nn NOT NULL,
    public_text                  NUMBER(1),
    date_of                      DATE default sysdate   CONSTRAINT textDate_nn NOT NULL
    );

CREATE TABLE synopsis(--37
    id_synopsis                  NUMBER(4)       PRIMARY KEY CONSTRAINT SynopsisId_nn NOT NULL,
    spoiler                      NUMBER(1),
    author                       NUMBER(4)       CONSTRAINT author_synopsis_fk_nn NOT NULL    
    );
    
CREATE TABLE comment(--38
    id                           NUMBER(4)       PRIMARY KEY CONSTRAINT comment_textId_nn NOT NULL,
    author                       NUMBER(4)        CONSTRAINT CommentAuthor_nn NOT NULL,
    id_reply                     NUMBER(4)        CONSTRAINT CommentAuthor_nn NOT NULL
    );
    
CREATE TABLE review(--39
    id_review                    NUMBER(4)       PRIMARY KEY CONSTRAINT reviewId_nn NOT NULL,
    raiting                      NUMBER(1)       CONSTRAINT raitingreview_nn NOT NULL,
    title                        VARCHAR2(30)    CONSTRAINT reviewTitle_nn NOT NULL,
    author                       NUMBER(4)       CONSTRAINT reviewAuthor_nn NOT NULL,
    id_series                    NUMBER(4),
    id_season                    NUMBER(4),
    id_production                NUMBER(4)    --Dios mio en serio que son ambisiosos ustedes dos -_-   
    );

CREATE TABLE wish_list(--40
    id                           NUMBER(4)       PRIMARY KEY CONSTRAINT wishlistId_nn NOT NULL,
    id_user                      NUMBER(4)       CONSTRAINT wishListUserid_nn NOT NULL,
    id_production                NUMBER(4)       CONSTRAINT WishListProdictionId_nn NOT NULL
    );

CREATE TABLE seen_recently(--41
    id                           NUMBER(4)       PRIMARY KEY CONSTRAINT SeenRecentlyId_nn NOT NULL,
    id_user                      NUMBER(4)       CONSTRAINT SeenRecentlyUserid_nn NOT NULL,
    id_production                NUMBER(4)       CONSTRAINT SeenRecentlyProdictionId_nn NOT NULL
    );

CREATE TABLE cart(--42
    id                           NUMBER(4)       PRIMARY KEY CONSTRAINT CartId_nn NOT NULL,
    id_user                      NUMBER(4)       CONSTRAINT CartUserid_nn NOT NULL,
    id_production                NUMBER(4)       CONSTRAINT CartProdictionId_nn NOT NULL
    );

CREATE TABLE purchase(--43
    id                           NUMBER(4)       PRIMARY KEY CONSTRAINT purchaseId_nn NOT NULL,
    date                         DATE            CONSTRAINT purchase_logDate_nn NOT NULL,
    tax                          NUMBER(8,2)     CONSTRAINT purchase_taxId_nn NOT NULL,
    id_user                      NUMBER(4)       CONSTRAINT purchase_idUserId_nn NOT NULL,
    id_payment_method            NUMBER(4)       CONSTRAINT purchase_paymentMethod_nn NOT NULL
);

CREATE TABLE purchase_production(--44
     id                          NUMBER(4)       PRIMARY KEY CONSTRAINT purchaseProductionId_nn NOT NULL,
     id_production               NUMBER(4)       CONSTRAINT purchaseProductionIdProduction_nn NOT NULL,
     id_purchase                 NUMBER(4)       CONSTRAINT purchaseProductionIdPurchase_nn NOT NULL
);

CREATE TABLE payment_method(--45
     id                          NUMBER(4)       PRIMARY KEY CONSTRAINT paymentMethodId_nn NOT NULL,
     owner                       NUMBER(4)       CONSTRAINT PaymentOwner_nn NOT NULL
);

CREATE TABLE paypal(--46
    id_paypal                    NUMBER(4)       PRIMARY KEY CONSTRAINT idPaypal_nn NOT NULL,
    acount                       VARCHAR2(20)    CONSTRAINT acountPaypal_nn NOT NULL
);

CREATE TABLE creditCard(--46
    id                          NUMBER(4)       PRIMARY KEY CONSTRAINT creditCardId_nn NOT NULL,
    name                        VARCHAR(20)     CONSTRAINT creditCardName NOT NULL,
    number                      NUMMBER(20)     CONSTRAINT creditCardnumber NOT NULL,
    --ccv                         NUMBER(4)       CONSTRAINT creditCardCCV_nn NOT NULL, el CCV no se guarda por motivos de seguridad.
    expiration                  DATE            CONSTRAINT creditCardExpiration NOT NULL
    --brand (Puede calcularse en java con el front end)
);
     
     
     
     
     
     
     
     