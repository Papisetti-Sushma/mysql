# 1

create database School;
use School;
CREATE TABLE lists (
    id INT AUTO_INCREMENT ,
    st_name VARCHAR(30),
    st_age VARCHAR(40),
    st_dob DATE,
    st_marks VARCHAR(47)
);
select * from lists
INSERT INTO lists (st_name, st_age, st_dob, st_marks) 
VALUES
('sushma', 20, '2003-03-18', 89),
('harsha', 25, '1999-02-28', NULL), 
('kumar', 29, '1994-05-04', 65);
select * from lists
update lists set st_marks=70 where id=2
select * from lists


# 2

create database Hcl;
use Hcl;
create table details (
    id integer auto_increment,
    E_name varchar(50),
    E_age int,
    E_role varchar(80),
    PRIMARY KEY (id)
);
select * from details
insert into details(E_name, E_age, E_role)
values
('sushma',20,'Devolper'),
('sai',30,'Analyst'),
('Kumar',36,'Scientist');
select * from details
insert into details (E_name, E_age, E_role) 
values('Harsha', null, 'Dataentry');
select * from details
update details set E_age=27 where id=4
select * from details

# 3 

create database Foods;
use Foods;
create table items(
id integer auto_increment,
i_name varchar(40),
i_type varchar(50),
i_ingredient varchar(60),
primary key(id),
i_cost int);
select * from items
insert into items(i_name,i_type,i_ingredient,i_cost)
values
('Biryani','Rice','chicken',300),
('Pizza','italian','Cheese',400),
('Pasta','italian','Organo',350);
select * from items
insert into items (i_name, i_type, i_ingredient, i_cost)
values ('Biryani', 'Rice', 'Mutton', 300);
insert into items (i_name, i_type, i_ingredient, i_cost)
values ('Panipuri', 'snack', null, 30);
select * from items
update items set i_ingredient='Potato' where id=5
select * from items

# 4

create database sathyabama;
use sathyabama;
create table friend(
id integer auto_increment,
f_name varchar(30),
location varchar(40),
batch varchar(30),
dept varchar(20),
primary key(id)
);
select * from friend
insert into friend (f_name,location,batch,dept)
values
('Neha','US',2024,'CSE'),
('Ramya','Hyderabad',2024,'IT'),
('Shannu','Vizag',2024,'HR'),
('keerthi',null,2024,'IT');
select * from friend
update friend set location='Vijaywada' where id=4
select * from friend

# 5

create database clothes;
use clothes;
create table bills(
id integer auto_increment,
b_name varchar(30),
b_items varchar(40),
b_number varchar(10),
primary key(id)
);
select * from bills
insert into bills (b_name, b_items, b_number)
values
('Deepthi', 4, 6739419243),
('Keerthi', 12, 9876543221),
('Harsha', null, 9876254321),
('Kiran', 18, 8756265203);
select * from bills

update bills set b_items=20 where id=3

select * from bills

# 6 

create database Teks;
use Teks;
create table student (
id integer auto_increment,
s_name varchar(30),
s_age int,
s_course varchar(40),
s_duration varchar(50),
primary key(id));
select * from student
insert into student(s_name,s_age,s_course,s_duration)
values
('Sushma',20,'Datascience','6months'),
('Harsha',24,'Java','3months'),
('Srikanth',21,'SQL', null),
('Rohith',22,null,'4months');
select * from student
update student set s_duration='5months' where id=3
update student set s_course='Python' where id=4
select * from student