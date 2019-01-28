use codeup_test_db;
select '' as 'The name of all albums by Pink Floyd', name from albums where artist = 'pink floyd';

select '' as "The year Sgt. Pepper's Lonely Hearts Club Band was released", release_date from albums where name = 'Lonely Hearts Club Band';

select '' as "Nevermind", genre from albums where name = 'nevermind';

select '' as "Albums released in the 1990s",name from albums where release_date between 1990 and 1999;

select '' as "Less than 20 million certified sales" , name from albums where sales between 0 and 20;

select '' as "Rock genre", artist from albums where genre = 'rock';
