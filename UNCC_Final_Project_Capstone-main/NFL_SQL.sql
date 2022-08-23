-- Creating table for passing stats.

CREATE TABLE NFL_PASSING_STATS (
 	Team VARCHAR (50) NOT NULL,
 	Att	INT NOT NULL,
 	Cmp	INT NOT NULL,
 	Cmp_Percentage NUMERIC NOT NULL,
 	Yds_Att NUMERIC NOT NULL,
 	PassYds INT NOT NULL,
 	TD INT NOT NULL,
 	INT_ INT NOT NULL,
 	Rate NUMERIC NOT NULL,
 	"1st" INT NOT NULL,
 	"1st_Percentage" NUMERIC NOT NULL,	
 	"20plus" INT NOT NULL,
 	"40plus" INT NOT NULL,
	Lng	VARCHAR (20) NOT NULL,
 	Sck	INT NOT NULL,
 	SckY INT NOT NULL,
 	Year VARCHAR (20) NOT NULL
 );

 select * from NFL_PASSING_STATS;

-- Creating table for rushing stats.

CREATE TABLE NFL_RUSHING_STATS (
	Team VARCHAR (50) NOT NULL,
	Att	INT NOT NULL,
	RushYds	INT NOT NULL,
	YPC	NUMERIC NOT NULL,	
	TD	INT NOT NULL,
	"20plus" INT NOT NULL,
	"40plus" INT NOT NULL,
	Lng	VARCHAR (20) NOT NULL,
	Rush_1st VARCHAR (20) NOT NULL,
	Rush_1st_Percentage NUMERIC NOT NULL,	
	RushFUM INT NOT NULL,
	Year VARCHAR (20) NOT NULL
);

-- Join tables

select *
from NFL_RUSHING_STATS nrs
join NFL_PASSING_STATS nps on nrs.Team = nps.Team and nrs.Year = nps.Year;


