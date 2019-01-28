USE codeup_test_db;
drop table if not exists albums;
create table if not exists albums (
  id int unsigned not null auto_increment,
  artist varchar(64),
  name varchar(128),
  release_date int(4),
  sales decimal(4,2),
  genre varchar(255),
  primary key (id)
)

-- id — auto incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)