use codeup_test_db;

select * from albums;
update albums set sales = sales*10;
select * from albums;

select * from albums where release_date between 0 and 1979;

update albums
set release_date = release_date - 100
where release_date between 0 and 1979;
select * from albums where release_date between 0 and 1979;


select * from albums where artist = "michael jackson";
update albums
set artist = "Peter Jackson"
where artist = "michael jackson";

select * from albums where artist = "michael jackson";



-- Write SELECT statements to output each of the following with a caption:
--
-- All albums in your table.
-- All albums released before 1980
-- All albums by Michael Jackson
-- After each SELECT add an UPDATE statement to:
--
-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change 'Michael Jackson' to 'Peter Jackson'
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.