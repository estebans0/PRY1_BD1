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
