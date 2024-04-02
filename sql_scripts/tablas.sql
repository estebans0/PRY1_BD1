CREATE TABLE genre (
    id                          NUMBER(8)       CONSTRAINT genre_id_nn NOT NULL,
    name                        VARCHAR2(20)    CONSTRAINT genre_name_nn NOT NULL,
    characteristics             VARCHAR2(90)
)