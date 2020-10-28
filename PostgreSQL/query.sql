-- Create the first table
-- CREATE TABLE "states_winner_df"(
--     "State" VARCHAR,
-- 	"Pollster" VARCHAR,
--     "Clinton" DEC,
--     "Trump" DEC,
--     "Clinton Adjusted" DEC,
--     "Trump Adjusted" DEC,
-- 	"Winner" VARCHAR);

-- Check data import
-- SELECT *
-- FROM states_winner_df;

-- Create the second table
-- CREATE TABLE "short_results_df" (
--     "State" VARCHAR(20),
--     "Electoral Votes" INT);

-- -- Check data import
-- SELECT *
-- FROM short_results_df;

-- See both tables together
-- SELECT DISTINCT X."State", X."Pollster", X."Clinton", X."Trump", 
-- 				  X."Clinton Adjusted", X."Trump Adjusted", X."Winner", Y."Electoral Votes"
-- INTO states_electoral_df
-- FROM states_winner_df as X
-- LEFT OUTER JOIN short_results_df as Y 
-- ON Y."State" = X."State"

--View final table
-- SELECT *
-- FROM states_electoral_df






	