// excercise 2

// create keyspace killrvideo, replication params required

CREATE KEYSPACE IF NOT EXISTS killrvideo 
WITH REPLICATION = {
  'class' : 'SimpleStrategy',
  'replication_factor': 1
};


// switch to keyspace killrvideo
USE killrvideo;

//drop keyspace
//DROP KEYSPACE IF EXISTS killrvideo;



