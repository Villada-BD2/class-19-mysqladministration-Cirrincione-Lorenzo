#Lorenzo-Cirrincione
use sakila;
#Create a user data_analyst
create user data_analyst@"localhost" identified by "12345";

#Grant permissions only to SELECT, UPDATE and DELETE to all sakila tables to it.
grant select, update, delete on sakila.* to data_analyst@"localhost";

#Login with this user and try to create a table. Show the result of that operation.
#11:06:35 create table sodnfoisd(select * from film)	Error Code: 1142. INSERT, CREATE command denied to user 'data_analyst'@'localhost' for table 'sodnfoisd'	0,00032 sec

#Try to update a title of a film. Write the update script.
	#use sakila;
	#update film set title = "asdoifnodsa"
	#where film_id = "4"
	#11:10:56 update film set title = "asdoifnodsa" where film_id = "4"	1 row(s) affected Rows matched: 1  Changed: 1  Warnings: 0	0,043 sec

#With root or any admin user revoke the UPDATE permission. Write the command
revoke update on sakila.* from data_analyst@"localhost" 
#Login again with data_analyst and try again the update done in step 4. Show the result.
	#11:19:27 update film set title = "aounfoisadnf" where film_id = "4"	Error Code: 1142. UPDATE command denied to user 'data_analyst'@'localhost' for table 'film'	0,00053 sec