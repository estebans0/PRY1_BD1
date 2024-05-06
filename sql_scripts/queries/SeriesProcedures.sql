CREATE OR REPLACE PROCEDURE getSerieEpisodes (Serie IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT episode.id_episode, episode.episode_number, episode.season
        FROM episode
        where episode.id_serie = Serie
        ORDER BY season ASC, episode_number ASC
        --GROUP BY season;
END getSerieEpisodes;
/

/*
CREATE OR REPLACE PROCEDURE _______ (Production IN NUMBER, pCursor OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursor FOR
        SELECT 
        FROM 
        where id_production = Production;
END __________;
/



CREATE TABLE series ( -- 10     para recordar que producciones son series
    id                          NUMBER(4)       CONSTRAINT series_id_nn NOT NULL--Este debe ser un foreing key hacia production.
);


CREATE TABLE episode ( -- 11    episodios de una serie
    id_episode                  NUMBER(4)       CONSTRAINT episode_idEpisode_nn NOT NULL,
    episode_number              NUMBER(2)       CONSTRAINT episode_episodeNumber_nn NOT NULL,
    season                      NUMBER(2)       CONSTRAINT episode_Season_nn NOT NULL
);
ALTER TABLE episode 
ADD (id_serie NUMBER(4) CONSTRAINT episodeSerieId NOT NULL
);


*/