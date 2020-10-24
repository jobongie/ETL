-- Drop table if exists
DROP TABLE states_now_df;

-- Create the players table
CREATE TABLE states_now_df (
	State VARCHAR(20),
	Poll Type VARCHAR(10),
	Clinton INT,
	Trump INT,
	Clinton Adjusted INT,
    Trump Adjusted INT);

-- Check data import
SELECT *
FROM states_now_df;

-- Create the matches table
CREATE TABLE r reduced_df
	State VARCHAR(20),
	Electoral Votes INT);
