use join_test_db;

select * from users
left join roles on users.id = roles.id;