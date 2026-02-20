-- set global max_allowed_packet=120973847;

use sales;
select * from dresses;
describe dresses;

select * from dresses order by Rating desc limit 10;

DELIMITER $$
CREATE function if not exists add_to_col(a int )
RETURNS INT
DETERMINISTIC 
BEGIN
	DECLARE b INT;
	set b = a + 10; 
    return b;
END $$
    
select * from dresses;

select add_to_col(20);    

select * from dresses;
select Rating , add_to_col(Rating) from dresses order by Rating desc;

DELIMITER $$
CREATE function if not exists add_two_num(a int,b int)
RETURNS INT
Deterministic 
BEGIN
	Declare c int ;
    set c = a+b;
    return c;
end $$





-- select max(Rating) from dresses;

DELIMITER $$ 
CREATE FUNCTION if not exists calcul(a int , b int )
RETURNS INT
DETERMINISTIC 
BEGIN 
	DECLARE c int;
    DECLARE d INT;
    set c = a+b;
    set b= a*b;
    return (a,b);
    
END $$
-- DROP FUNCTION CALCUL;


DELIMITER $$
create function if not exists final_profit1(profit int , discount int)
returns int 
deterministic 
begin
	declare final_profit int ;
    set final_profit = profit - discount;
    return final_porfit;
end$$ 

select final_profit1(100,30);

select * from dresses;
    
DELIMITER $$
CREATE FUNCTION if not exists profits(f_price float , d_price float)
returns float
deterministic
begin
	declare result float;
    set result = f_price - d_price;
    return result;
END $$
select * from dresses;
select profits(100.00,2.67);
select Rating, Recommendation , profits(Rating,Recommendation) as Final_profit from dresses;

DELIMITER $$
CREATE FUNCTION if not exists int_to_str(a int)
returns varchar(30)
deterministic 
begin 
	declare b varchar(30);
    set b= a;
    return b;
end $$

select int_to_str(456);
    
-- 1 - 100 - super affordable product 
-- 100-300 - affordable 
-- 300- 600 - moderate price
-- 600 + - expenxive 

DELIMITER &&
CREATE FUNCTION if not exists mark_sales(sales int)
returns varchar(30)
deterministic 
begin
	declare flag_sales  varchar(30);
    if sales < 100 then 
		set flag_sales=`super affordable`;
	elseif sales <300 and sales >100 then 
		set flag_sales = `affordable`;
	elseif sales >300 and sales < 600 then 
		set flag_sales = `Moderate Price`;
	else 
		set flag_sales = `Expensive`;
	end if ; 
return flag_sales ; 
end &&


DELIMITER &&
CREATE FUNCTION  if not exists hello(a int)
RETURNS VARCHAR(300)
DETERMINISTIC 
BEGIN
	DECLARE r varchar(300);
    set r="hello";
    return r;
end &&

select hello(10);


DELIMITER &&
CREATE FUNCTION if not exists mark_sale1(sales int)
Returns varchar(100)
deterministic
begin
	declare flag varchar(100);
    if sales <100 then 
		set flag="Very Affordable";
	elseif sales > 100 and sales < 300 then 
		set flag = "Affordable";
	elseif sales > 300 and sales < 600 then 
		set flag = "Moderate " ;
	else
		set flag = "Expensive";
	end if;
	return flag;
END &&

select mark_sale1(400);
select * from dresses;


-- ---- #######################@@@@@@@@@@@@@@@@@@@@@@@##################-------------------    
-- Loops in Mysql ----------------------------------------------------------------
-- ---- #######################@@@@@@@@@@@@@@@@@@@@@@@##################-------------------    
create table if not exists insert_data(val int);

DELIMITER $$
CREATE PROCEDURE if not exists insert_data1()
begin
set @var =  10 ;
generate_data : loop
insert into insert_data values (@val);
set @var = @var + 1 ;
if @var = 100 then 
	leave generate_data;
end if ;
end loop generate_data;
END $$
truncate table insert_data;
call insert_data1();
select * from insert_data;    

create table if not exists n_numbers(n int);    
DELIMITER $$ 
CREATE PROCEDURE if not exists n_number(in a int)
begin 
	set @var=1;
    g_loop : loop
    insert into n_numbers values(@var);
    set @var = @var + 1;
    if @var = a then 
		leave g_loop;
	end if;
    end loop g_loop;
END $$    

call n_number(10);

select * from n_numbers;
    
-- Write the procedure to used the loop inside the procedure and perform the 1 to n number that's number is divisible by 3 and n take the input from user 
create table if not exists three_div(a int);

DELIMITER $$ 
CREATE PROCEDURE if not exists  div_3(IN b int)
begin 
	set @d=1;
	l_loop : loop
    if @d % 3 = 0 then 
		set @d=@d+1;
	else 
		set@d=@d+1;
	insert into three_div values(@d);
    if @d = b then 
		leave l_loop;
	end if;
    end if ;
    end loop l_loop;
END $$

call div_3(31);
select * from three_div;

create table if not exists mul_5(val int);

DELIMITER $$ 
create procedure multiply1_by_5()
BEGIN 
	SET @val = 5;
    start_loop : loop
    if @val%5=0 then
		insert into mul_5 values(@val);
    if @val =100 then 
		leave start_loop;
	set @val=@val + 1;
	end if;
    end if ;
    end loop start_loop;
END $$

select * from mul_5;
call multiply1_by_5();
		

    