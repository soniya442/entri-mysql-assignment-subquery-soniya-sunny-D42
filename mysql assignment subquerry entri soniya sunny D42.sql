select * from country_1 ;

select * from persons_1 ;

select Country_name, count(*) as number_of_persons
from persons_1 group by Country_name ;

select Country_name, count(*) as number_of_persons from persons_1
group by Country_name 
order by   number_of_persons desc ;

select Country_name, avg(Rating) as average_rating
from persons_1 group by Country_name
having avg(rating) > 3.0 ;

select distinct Country_name from persons_1
where rating = (select rating from persons_1 where Country_name ='usa' limit 1) ;

select Country_name,Population from country_1
where Population > (select avg(Population) from country_1) ;

create database product ;
use product ;

create table customer(
customer_id int primary key,
first_name varchar(50),
last_name varchar (50),
Email varchar(100),
phone_number varchar(15),
address varchar(255),
city varchar(50),
state varchar(50),
zip_code varchar(10),
country varchar(50)
);

INSERT INTO Customer (Customer_Id, First_name, Last_name, Email, Phone_number, Address, City, State, Zip_code, Country) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '555-1234', '123 Elm St', 'New York', 'New York', '10001', 'US'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', '456 Maple Ave', 'Los Angeles', 'California', '90001', 'US'),
(3, 'Raj', 'Patel', 'raj.patel@example.com', '555-8765', '789 Oak Blvd', 'Chicago', 'Illinois', '60601', 'US'),
(4, 'Ling', 'Wei', 'ling.wei@example.com', '555-4321', '101 Pine St', 'San Francisco', 'California', '94101', 'US'),
(5, 'Carlos', 'Mendez', 'carlos.mendez@example.com', '555-7890', '202 Cedar Ln', 'Miami', 'Florida', '33101', 'US'),
(6, 'Yuri', 'Ivanov', 'yuri.ivanov@example.com', '555-3456', '303 Birch Dr', 'Houston', 'Texas', '77001', 'US'),
(7, 'Hiro', 'Tanaka', 'hiro.tanaka@example.com', '555-6543', '404 Spruce Rd', 'Seattle', 'Washington', '98101', 'US'),
(8, 'Hans', 'Muller', 'hans.muller@example.com', '555-2345', '505 Redwood Cir', 'Portland', 'Oregon', '97201', 'US'),
(9, 'Emily', 'Clark', 'emily.clark@example.com', '555-8769', '606 Fir St', 'Dallas', 'Texas', '75201', 'US'),
(10, 'Pierre', 'Dupont', 'pierre.dupont@example.com', '555-9876', '707 Palm Blvd', 'Boston', 'Massachusetts', '02101', 'US');

select * from customer ;

create view customer_info as
select concat(first_name, '', last_name) as full_name ,email
from customer ;

select * from customer_info ;

create view us_customer as 
 select * from customer 
where country ='us' ;

select * from us_customer ;

create view customer_details as
select concat(first_name,' ',last_name) as full_name,email,phone_number,state from customer ;

select * from customer_details ;
set sql_safe_updates =0 ;
update customer_details 
set phone_number ='new_ph_number'
where state ='california' ;

select state, count(*) as number_of_customer
from customer group by state
having count(*) >5 ;

select state,count(*) as number_of_customer from customer_details group by state ;

select * from customer_details order by state ;





