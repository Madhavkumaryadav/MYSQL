Create database if not exists sales;
use sales;

show databases;
show tables;


create table if not exists dresses(
`Dress_ID` varchar(30),
`Style` varchar(30),
`Price` varchar(30),
`Rating` varchar(30),
`Size` varchar(30),
`Season` varchar(30),
`NeckLine` varchar(30),
`SleeveLength` varchar(30),
`waiseline` varchar(30),
`Material` varchar(30),
`FabricType` varchar(30),
`Decoration` varchar(30),
`Pattern Type` varchar(30),
`Recommendation` varchar(30)
) ;

show tables;
describe dresses;

select * from dresses;

-- DELIMITER && 
-- 	CREATE procedure load_data(IN file_path varchar(50))
-- BEGIN
-- 	LOAD DATA INFILE file_path
--     into table 
-- END && 

-- Load the data in the bulk form or many data insert at the one time 

-- LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\attribute_data.csv'  -- Enter the data path of the your local System  
-- into table dresses 
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES tERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- LOAD DATA LOCAL INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\attribute_data.csv'
-- INTO TABLE dresses
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- SHOW VARIABLES LIKE 'secure_file_priv';
-- SET GLOBAL local_infile=1;

select count(*) from dresses;
-- truncate table dresses;


create table if not exists test(
test_id int not null auto_increment , 
test_name varchar(30),
test_mailid varchar(30),
test_addredd varchar(30),
primary key(test_id)
);

select * from test;

-- insert into test values 
-- ('madhav','m@gmail.com','abc'),
-- ('subodh','s@gmail.com','def');
-- why it will be not working -> because we have not maping the value in the table 

-- Fixed the problem for the above solution 
insert into test (test_name,test_mailid,test_addredd) values
('madhav','m@gmail.com','abc'),
('subodh','s@gmail.com','def');

select * from test;
alter table test 
rename to test1;
alter table test1 add column salary int default(100000);
select * from test1;

