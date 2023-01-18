create database peertube;
create user peertube password 'peertube';
grant all privileges on database peertube to peertube;
\c peertube
CREATE EXTENSION pg_trgm;
CREATE EXTENSION unaccent;
