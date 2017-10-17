// excercise 2

// create keyspace killrvideo, replication params required

CREATE KEYSPACE IF NOT EXISTS killrvideo 
WITH REPLICATION = {
  'class' : 'SimpleStrategy',
  'replication_factor': 1
};


// switch to keyspace killrvideo
USE killrvideo;

// create table
CREATE TABLE IF NOT EXISTS videos (
    video_id TIMEUUID,
    added_date TIMESTAMP,
    description TEXT,
    title TEXT,
    user_id UUID,
    PRIMARY KEY(video_id)
);
    
//import data into the table videos
COPY videos(video_id, added_date, description, title, user_id) FROM '/root/labwork/exercise-2/videos.csv' WITH HEADER=true;


//drop keyspace
//DROP KEYSPACE IF EXISTS killrvideo;




