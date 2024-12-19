create database customers;
use customer;
create table customerinfo(
id integer auto_increment,
f_name varchar(100),
l_name varchar(30),
age integer,
salary integer,
primary key(id)
);

# show tables

select * from customerinfo;

# to insert the values 

insert into customerinfo(f_name,l_name,age,salary)
values
('sushma','sri',21,300000),
('harsha',null,30,20000),
('balu','Prakash',25,45000);

select * from customerinfo

# alter the null values
# update the null values 

update customerinfo set l_name='papisetti' where id=2

select * from customerinfo

# delete the values 

delete from customerinfo where id=1

select * from customerinfo