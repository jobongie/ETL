-- --Make a Table for State ID
-- CREATE TABLE state_id(
-- 		state_id SERIAL PRIMARY KEY,
-- 		state VARCHAR)

-- INSERT INTO state_id(state)
-- VALUES ('Alabama'),
-- ('Alaska'),
-- ('Arizona'),
-- ('Arkansas'),
-- ('California'),
-- ('Colorado'),
-- ('Connecticut'),
-- ('Delaware'),
-- ('District of Columbia'),
-- ('Florida'),
-- ('Georgia'),
-- ('Hawaii'),
-- ('Idaho'),
-- ('Illinois'),
-- ('Indiana'),
-- ('Iowa'),
-- ('Kansas'),
-- ('Kentucky'),
-- ('Louisiana'),
-- ('Maine'),
-- ('Maine CD-1'),
-- ('Maine CD-2'),
-- ('Maryland'),
-- ('Massachusetts'),
-- ('Michigan'),
-- ('Minnesota'),
-- ('Mississippi'),
-- ('Missouri'),
-- ('Montana'),
-- ('Nebraska'),
-- ('Nebraska CD-1'),
-- ('Nebraska CD-2'),
-- ('Nebraska CD-3'),
-- ('Nevada'),
-- ('New Hampshire'),
-- ('New Jersey'),
-- ('New Mexico'),
-- ('New York'),
-- ('North Carolina'),
-- ('North Dakota'),
-- ('Ohio'),
-- ('Oklahoma'),
-- ('Oregon'),
-- ('Pennsylvania'),
-- ('Rhode Island'),
-- ('South Carolina'),
-- ('South Dakota'),
-- ('Tennessee'),
-- ('Texas'),
-- ('Utah'),
-- ('Vermont'),
-- ('Virginia'),
-- ('Washington'),
-- ('West Virginia'),
-- ('Wisconsin'),
-- ('Wyoming');

-- SELECT *
-- FROM state_id

-- -- Drop table if exists
-- DROP TABLE states_now_df;
-- DROP TABLE short_results_df;

-- Create the first table
-- CREATE TABLE "states_now_df"(
--     "State" VARCHAR,
--     "Poll Type" VARCHAR(10),
-- 	"Pollster" VARCHAR,
-- 	"Start Date" VARCHAR,
-- 	"End Date" VARCHAR,
--     "Clinton" DEC,
--     "Trump" DEC,
--     "Clinton Adjusted" DEC,
--     "Trump Adjusted" DEC);


-- Check data import
-- SELECT *
-- FROM states_now_df;

-- Create the second table
-- CREATE TABLE "short_results_df" (
--     "State" VARCHAR(20),
--     "Electoral Votes" INT);

-- -- Check data import
-- SELECT *
-- FROM short_results_df;

-- See both tables together
-- SELECT DISTINCT X."State", X."Poll Type", 
-- 				X."Pollster", X."Start Date", X."End Date", 
-- 				X."Clinton", X."Trump", X."Clinton Adjusted",
-- 				X."Trump Adjusted", Y."Electoral Votes"
-- INTO states_electoral_df
-- FROM states_now_df as X
-- LEFT OUTER JOIN short_results_df as Y 
-- ON Y."State" = X."State"






	