// excercise 3

// keyspace killrvideo is created, use it
USE killrvideo;

// create table
CREATE TABLE IF NOT EXISTS videos_by_title_year (
    title TEXT,    
    added_year INT,
    added_date TIMESTAMP,
    description TEXT,
    user_id UUID,
    video_id UUID,
    PRIMARY KEY((title, added_year)) // for querying by title and added_year we need composite key
);
    
// import data into the table videos
COPY videos_by_title_year(title, added_year, added_date, description, user_id, video_id) FROM '/root/labwork/exercise-3/videos_by_title_year.csv' WITH HEADER=true;

// select video by title and added_year
select * from videos_by_title_year where title = 'Another Phone Test' and added_year = 2015;

//drop keyspace
//DROP KEYSPACE IF EXISTS killrvideo;




