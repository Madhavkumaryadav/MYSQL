-- show databases;
-- use mysql_intro;
-- show tables;
-- describe engine_cost;

-- create database -- 
-- drop database mysql_intro;

create database mysql_intro;
use mysql_intro;

show databases;
show tables;
create table table1(name varchar (100),mobile_no int(10) not null , city varchar(39));
show tables;
describe table1;

insert into table1(name,mobile_no,city) values ('madhav',99999999,'Bihar'),('subodh ',9919381,'Delhi');
-- 
select * from table1;
select  distinct city from table1;

select count(name) from table1;

select count(name) as count_name from table1;

select sum(mobile_no) from table1;

select avg(mobile_no) from table1;

select name,city from table1;

select * from table1 where name='madhav';

select name,city from table1 where city ='delhi';

select * from table1 where city in ('bihar','delhi');

select * from table1 where mobile_no between 0000000000 and 999999999;

select city , sum(mobile_no) as total_mobile_no from table1 
group by city;

select * from table1 order by name desc;

select (20+40) as addition ;
select (80-38) as subtract;
select length('india') as total_len;

select repeat('@',10);
select upper('madhav');
select lower('MADHAV');

select curdate();
select day(curdate());
select now();


# string functions 
select upper('madhav') as Upper_case;
select lower('MADhav') as Lower_case;
select lcase('MADhav') as Lower_case;

select character_length('India') as total_length;

select character_length(name) as real_name , city from table1;
select char_length(name) as real_name , city from table1;

select concat('India',' is ',' in Asia') as merged;

select mobile_no , name , concat(name,' ', mobile_no ) as name_a from table1;

select reverse('india');

select reverse(name) as name from table1;

select replace('Orange is a vegetable', 'vegetable','fruit') as replacecd;

select length('          India           ');

select length(ltrim('          India           '));

select length(rtrim('          India           '));

select position('is' in 'Fruit in  Orange is a fruit ') as name;

select ascii('4');

show databases;
use mysql_intro;

describe table1;

select * from table1;

select round(avg(age),2) as average_age from table1;
select city,sum(age) as Total_age from table1 group by city;
select city,count(city) as Person_COUNT,sum(age) as Average_Age_By_city from table1 group by city;

show tables;

create table employee(Emp_Id int primary key, Emp_name varchar(25),Age int ,
 Gender char(1), Doj date , dept varchar(20), city varchar(15),Salary float);
 
 -- select * from employee;
 
 describe employee;
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (101, 'Alice Johnson', 30, 'F', '2020-05-15', 'Sales', 'New York', 65000.00);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (102, 'Bob Smith', 45, 'M', '2015-08-20', 'HR', 'Los Angeles', 78000.50);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (103, 'Charlie Brown', 22, 'M', '2023-01-10', 'IT', 'Chicago', 55000.00);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (104, 'Diana Prince', 35, 'F', '2018-11-01', 'Marketing', 'New York', 82000.75);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (105, 'Ethan Hunt', 50, 'M', '2010-03-25', 'Finance', 'London', 95000.25);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (106, 'Fiona Glenanne', 28, 'F', '2021-07-19', 'IT', 'Chicago', 62000.00);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (107, 'George Kirk', 32, 'M', '2019-04-12', 'Sales', 'Miami', 71000.00);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (108, 'Hannah Baker', 24, 'F', '2022-09-05', 'HR', 'Los Angeles', 58000.50);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (109, 'Ian Malcolm', 40, 'M', '2016-02-29', 'Research', 'New York', 90000.00);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (110, 'Jasmine Lee', 38, 'F', '2017-12-03', 'Finance', 'London', 88000.75);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (111, 'Kyle Reese', 29, 'M', '2020-10-21', 'Marketing', 'Chicago', 68000.00);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (112, 'Laura Palmer', 42, 'F', '2014-06-18', 'IT', 'Seattle', 85000.25);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (113, 'Mike Ross', 26, 'M', '2023-03-01', 'Legal', 'Boston', 60000.00);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (114, 'Nancy Drew', 33, 'F', '2019-01-28', 'Sales', 'Miami', 73000.50);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (115, 'Oliver Queen', 48, 'M', '2012-09-10', 'HR', 'Seattle', 92000.00);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (116, 'Pamela Beesly', 27, 'F', '2022-04-04', 'Admin', 'Boston', 52000.75);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (117, 'Quentin Coldwater', 31, 'M', '2021-01-15', 'Research', 'New York', 79000.00);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (118, 'Rachel Green', 36, 'F', '2018-05-11', 'Marketing', 'Los Angeles', 80000.25);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (119, 'Steve Rogers', 55, 'M', '2008-07-07', 'IT', 'Chicago', 110000.00);
INSERT INTO Employee (Emp_Id, Emp_name, Age, Gender, Doj, dept, city, Salary) VALUES (120, 'Tina Fey', 41, 'F', '2015-10-14', 'Finance', 'Seattle', 98000.50);

select * from employee;

select distinct city from employee;

select distinct dept from employee;

select avg(age)  from employee;

# Average age in each department 

select dept, round(avg(age),2) as Average_Age from employee group by dept;

select dept, sum(salary) as Totale_Salary from employee
 group by dept;
 
 
 select count(emp_id) as Employee_ID, city from employee
 group by city
 order by count(emp_id) desc;
 
 select year(doj) as year, count(emp_id) 
 from employee
 group by year(doj);
 
 
 create table sales (
 product_id int ,
 sell_price float , 
 quantity int , 
 state varchar(30)
 );
 
 
 INSERT INTO sales (product_id, sell_price, quantity, state) VALUES
(101, 15.50, 5, 'California'),
(102, 22.00, 10, 'Texas'),
(103, 5.99, 25, 'New York'),
(104, 50.00, 2, 'Florida'),
(105, 120.75, 1, 'California'),
(101, 15.50, 8, 'Texas'),
(106, 33.90, 4, 'Washington'),
(107, 8.25, 15, 'California'),
(102, 22.00, 6, 'New York'),
(108, 99.99, 3, 'Texas'),
(103, 5.99, 12, 'Florida'),
(109, 14.50, 7, 'Washington'),
(110, 200.00, 1, 'New York'),
(104, 50.00, 5, 'California'),
(101, 15.50, 10, 'Florida'),
(105, 120.75, 2, 'Texas'),
(106, 33.90, 3, 'New York'),
(107, 8.25, 20, 'Washington'),
(108, 99.99, 1, 'Florida'),
(109, 14.50, 11, 'California');

select * from  sales;
describe sales;

select product_id, round(sum(sell_price * quantity),2) as Revenue 
from sales group by product_id; 

create table c_product(
product_id int ,
cost_price float
);

insert into c_product 
values (119,270.0),
(108,250.0);

select * from c_product;

describe sales;

-- select c.product_id,sum((s.sell_price - c.cost_price ) * s.quantity)
-- as Profit 
-- from sales as s inner join c_product as c
-- where s.product_id = c.product_id 
-- group by c.product_id;
 
 
 ## Having in mysql
 select * from employee;
 
 select dept,round(avg(salary),2) as avg_salary 
 from employee
 group by dept
 having avg(salary) > 75000;
 
 select city, sum(salary) as Total
 from employee 
 group by city 
 having sum(salary) > 200000;
 
 select dept , count(*) as Emp_count 
 from employee
 group by dept 
 having count(*) > 2;
 
 select city,count(*) as emp_count 
 from employee 
 where city != 'Houston'
 group by city 
 having count(*) > 2;
 
 select dept , count(*) as Emp_count
 from employee
 group by dept
 having avg(salary) > 80000; 
 
 select dept, count(*) as EMP_count
 from employee 
 group by dept 
 having count(*) >2;
 
 
 
 ## Joins 
 -- drop database sql_joins;
 create database sql_joins;
 show databases;
 use sql_joins;
 
 create table cricket(
 cricket_id int auto_increment,
 name varchar(30),primary key(cricket_id));
 
 create table football(
 football_id int auto_increment,
 name varchar(30),primary key(football_id));
 
 insert into cricket (name)
 values ('Stuart'),('michael'),('Hayden'),('Asad');
 
 select * from cricket;
 
 insert into football (name)
 values ('Madhav'),('vishal'),('Hayden'),('Asad');
 
 select * from football;
 
 # find the student who have participate in the both games 
 select * from cricket c 
 inner join 
 football as f 
 on c.name=f.name;
 
 select c.cricket_id,c.name , f.football_id,f.name
 from cricket as c inner join football as f
 on c.name=f.name;
 
 use mysql_intro;
 show tables;
 select * from employee;
 select * from sales;
 select * from table1;
 
 
--  select e.emp_name , e.salary , s.sell_price,
--  sum(sell_price * quantity) as revenue 
--  from Employee as e
--  inner join sales as s 
--  on e.emp_id=s.product_id 
--  group by emp_name;


## Left Join
select * from employee;
select * from sales;

select e.emp_name,e.emp_id , product_id 
from employee as e
left join 
sales as s
on e.emp_id=s.product_id;
 
 
 ## Right Join 
 select e.emp_name,e.emp_id , product_id 
from employee as e  
Right join 
sales as s
on e.emp_id=s.product_id;
 
 
 ## FUll Join 
 
select e.emp_name,e.emp_id , product_id 
from employee as e
left join 
sales as s
on e.emp_id=s.product_id
union
select e.emp_name,e.emp_id , product_id 
from employee as e
right join 
sales as s
on e.emp_id=s.product_id;

## Sub Query
# Write a SQL Query to Display department with maximum salary from employees table 

select dept from employee where 
salary = (select max(salary) from employee);

# Find the name of the employee with maximum salary in the Employee table
describe employee;

select emp_name from employee 
where salary=(select max(salary) from employee);

  ## Types of sub-Queries 
  ## 1. subqueries with the select statement
  ## 2. subqueries with the Update statement
  ## 3. subqueries with the Delete statement
  ## 4. subqueries with the insert statement 
  
  # 1. Subqueries with the select statment 
  
  select emp_name,dept,salary from employee
  where salary<(select avg(salary) from employee);
  
  create database sub_query;
  use sub_query;
  
# 2. Update subquery
create table products(
product_id int , item varchar(30),sell_price float,product_type varchar(30)
);

describe products;

insert into products 
values
(101,'Jewellery',800,'luxury'),
(102,'T-shirt',100,'Non_Luxury'),
(103,'Laptop',13000,'luxury'),
(104,'Table',400,'Non_Luxury');

select * from products;

create table orders(
order_id int, product_sold varchar(30), selling_price float
);

insert into orders 
select product_id,item,sell_price
from products where product_id in 
(select product_id from products where sell_price > 1000);

select * from orders;


## Update Queries 
-- update increase_price set 
-- sell_price=sell_price * 2 
-- where sell_price in (select sell_price from products where sell_price <1000);


select 5 + 3 + ( 3 * 5 )  as Total;
select version();