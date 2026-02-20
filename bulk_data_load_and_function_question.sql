
create database if not exists retail;
use retail ;

create table if not exists retail (
InvoiceNo int  not null,
StockCode int not null,
Description varchar (100) not null,
Quantity int not null,
InvoiceDate datetime not null,
UnitPrice DECIMAL(10,3) not null,
CustomerID int not null,
Country varchar(40) not null 
);
drop table retail;

show tables ;
describe retail;
truncate table retail;
--  Load the data in these table 
set global max_allowed_packet = 209715200;
SET SESSION sql_mode = ' ';
 
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'secure_file_priv';
 
 SHOW VARIABLES LIKE 'secure_file_priv';
 
 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/retail_data.csv'
INTO TABLE retail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- SELECT LOAD_FILE('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/retail_data.csv');


SELECT * FROM RETAIL;
SELECT COUNT(*) FROM RETAIL;

-- Question 1 :- 
-- 	Create a loop for a table to insert a record into a table for two columns in first column you have to 
--  insert a data ranging from 1 to 100 and in second column you have to insert as square of these number as the name of the square_column

create table if not exists square_num(num int , square int);

DELIMITER $$
CREATE PROCEDURE insert_number()
BEGIN 
	SET @a=1;
    start_loop : loop
    insert into square_num(num,square) values (@a , @a*@a);
    SET @a = @a + 1;
    if @a = 100 then
		leave start_loop ;
	end if;
    end loop start_loop;
END $$
truncate table square_num;
call insert_number();
select * from square_num;


-- Question 2:-
-- 	create a user defined function to find out a date differences in number of days .
 
    

-- Question 3:- 
-- 	Create UDF to find out a log10 of any given number 
-- Solution :---->
select log(10);
DELIMITER $$
CREATE FUNCTION log_find(a int )
RETURNs float 
deterministic 
BEGIN 
	declare b float ;
    set b = round(log(a),4);
    return b;
END $$;
-- drop function retail.log_find;
select retail.log_find(10);
    
-- Question 4:- 
-- 	Create a UDF which will be able to check a total number of records avaible in you table 
-- Solution :---->




-- Question 5:- 
-- 	Create a Procedure to find out second 5th highest profit in your sales table 
--     you don't have to use rand and window function 
-- Solution :---->

-- write a function in square number 

DELIMITER $$
CREATE FUNCTION SQUARE(a int)
returns int 
deterministic 
begin 
	declare b int ;
    set b = a*a; 
    return b;
END $$

select retail.square(10);
	

