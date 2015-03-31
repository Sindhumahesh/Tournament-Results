-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.




DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS tournaments;
DROP VIEW IF EXISTS standings;
CREATE DATABASE tournament;

CREATE TABLE players(
id SERIAL PRIMARY KEY,
name TEXT);

CREATE TABLE matches(
id SERIAL PRIMARY KEY,
winner_id INTEGER REFERENCES players(id),
opponent_id INTEGER REFERENCES players(id));


CREATE TABLE tournaments (
id serial PRIMARY KEY,
name text NOT NULL,
players integer NOT NULL
);

CREATE VIEW standings AS
SELECT players.id as player_id, players.name,
(SELECT count(*) FROM matches WHERE matches.winner_id = players.id) AS Matches_Won,
(SELECT count(*) FROM matches WHERE players.id in (winner_id, opponent_id)) as Matches_Played
FROM players
GROUP BY players.id
ORDER BY Matches_Won;
