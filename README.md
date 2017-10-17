# cassandra-ds220
Exercises for DataStax, DS220: Data Modeling Course

* [Exercise 1](#Exercise1)
* [Exercise 2](#Exercise2)


### <a id="Exercise1">Exercise1</a>

Open a terminal, and start Cassadra Query Language Shell(CQLSH) with command:

```
$ cqlsh
```

then execute cql statement in order to see all available keyspaces:

```
$ select * from system.schema_keyspaces;
```
the answer should be:

```
 keyspace_name | durable_writes | strategy_class                                  | strategy_options
---------------+----------------+-------------------------------------------------+----------------------------
    dse_system |           True | org.apache.cassandra.locator.EverywhereStrategy |                         {}
     OpsCenter |           True |     org.apache.cassandra.locator.SimpleStrategy | {"replication_factor":"1"}
        system |           True |      org.apache.cassandra.locator.LocalStrategy |                         {}
 system_traces |           True |     org.apache.cassandra.locator.SimpleStrategy | {"replication_factor":"2"}
```

### <a id="Exercise2">Exercise2</a>

Open a terminal, and start Cassadra Query Language Shell(CQLSH) with command:

```
$ cqlsh
```

then execute cql statement in order to create keyspace 'killrvideo' and to create table 'videos':

```
CREATE KEYSPACE IF NOT EXISTS killrvideo 
WITH REPLICATION = {
  'class' : 'SimpleStrategy',
  'replication_factor': 1
};

USE killrvideo;

CREATE TABLE IF NOT EXISTS videos (
    video_id TIMEUUID,
    added_date TIMESTAMP,
    description TEXT,
    title TEXT,
    user_id UUID,
    PRIMARY KEY(video_id)
);
 
```

then import data using COPY command from cqlsh 

```
$ COPY videos(video_id, added_date, description, title, user_id) FROM '/root/labwork/exercise-2/videos.csv' WITH HEADER=true;
```

now you can check is data imported with

```
$ select count(*) from videos;

$ select * from videos;
```

at the end drop a keyspace 'killrvideo'

```
$ DROP KEYSPACE IF EXISTS killrvideo;
```



