-- Drop table if exists
-- DROP TABLE states_now_df;
-- DROP TABLE short_results_df;

-- -- Create the first table
-- CREATE TABLE "states_now_df" (	
--  "State" VARCHAR(30),
--  "Poll Type" VARCHAR,
-- -- "Pollster" VARCHAR(40),
-- --  "Start Date" Date,
-- --  "End Date" Date,
--  "Clinton" DEC,
--  "Trump" DEC,
--  "Clinton Adjusted" DEC,
--  "Trump Adjusted" DEC);

-- Check data import
SELECT *
FROM states_now_df;

-- -- Create the second table
-- CREATE TABLE "short_results_df" (
-- 	"State" VARCHAR(20) PRIMARY KEY,
-- 	"Electoral Votes" INT)

-- -- Check data import
-- SELECT *
-- FROM short_results_df;

-- -- Join players with seasons_stats
-- SELECT states_now_df.State,
--   states_now_df.Poll,
--   states_now_df.Clinton,
--   states_now_df.Trump,
--   states_now_df.Clinton Adjusted,
--   states_now_df.Trump Adjusted,
--   short_results_df.State,
--   short_results_df.Electoral Votes
-- FROM states_now_df
-- INNER JOIN short_results_df ON
-- states_now_df.State = short_results_df.State;