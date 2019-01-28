use codeup_test_db;
SELECT 'Removing all after 1991!' as 'NOTICE';
delete from albums where release_date between 1992 and 2100;

SELECT 'Removing Disco genre!' as 'NOTICE';
delete from albums where genre = 'disco';

SELECT 'Removing Madonna!' as 'NOTICE';
delete from albums where artist = 'madonna';