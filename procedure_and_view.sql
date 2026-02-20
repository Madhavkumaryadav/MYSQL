show databases;
use data_science;
show tables;

 -- Create a procedure to using the DELIMITER in mysql function 
 
 DELIMITER && 
 create procedure select_res()
 BEGIN
	select * from bank_details;
END &&

call select_res();

DELIMITER && 
create procedure max_bal()
BEGIN 	
	select * from bank_details
    where 
    balance in (select max(balance) from bank_details);
END &&

call max_bal()


DELIMITER &&
	create procedure avg_bal_jobrole1(IN madhav varchar(30))
BEGIN
	select avg(balance) from bank_details 
    where
    job=madhav;
END &&

call avg_bal_jobrole1('admin.');
call avg_bal_jobrole1('retried');
call avg_bal_jobrole1('unknown');

DELIMITER &&
	create procedure sel_edu_job(in v1 varchar(30),in v2 varchar(30))
BEGIN
	select * from bank_details 
    where 
    education = v1 and job=v2;
END &&


-- view 
-- create a simple view 
create view bank_view as 
select age,job,education,marital,balance from bank_details; 


 -- calling the procedure and view  

call max_bal();
call select_res();

call avg_bal_jobrole1('management');
call avg_bal_jobrole1('blue-collar');
call avg_bal_jobrole1('entrepreneur');

call sel_edu_job('tertiary','retired');

select * from bank_view;
