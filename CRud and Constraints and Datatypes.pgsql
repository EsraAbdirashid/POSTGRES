-- create database
create database mernstackAfternoon;

-- Create 
create table registrationStudents(
id BIGSERIAL primary key ,
firstname text,
lastname text ,
Age int,
phone text
);

-- Drop table 
drop table registrationstudents;


-- Read
select *from registrationStudents;
select row_to_json(registrationStudents) from registrationStudents;

-- Insert 
insert into registrationStudents (firstname, lastname, age,phone)
VALUES('Maria','Mohamed',3,'0915728865');

insert into registrationStudents (firstname, lastname, age, phone)
VALUES('Casiisa','mohamed',2,'0915728865');

insert into registrationStudents (firstname, lastname, age, phone)
VALUES('Caisha','Afrax',45,'0999999999999');

-- Update
update registrationstudents set firstname = 'Mustafe',lastname='Ali',age=20,phone='0987464005' where id=1;
update registrationstudents set address= '9aad' where id=2; 

-- Delete
delete from registrationstudents ;
delete from registrationstudents where id=3;

-- Alter my table contraint 
alter table registrationstudents add primary key (id);
alter table registrationstudents add address text;

-- Default Constraint, check constraints 
create table voters(
    voterId serial primary key,
    votername text,
    age int check(age >=15),
    city text default('jigjiga')
)

select *from voters;

insert into voters(votername,age)
values('maria mohamed',16);

insert into voters(votername,age ,city)
VALUES('Casiisa Maxamed',17,'Qabridahar');

insert into voters(votername,age )
VALUES('Nimcaan Cali',19);




-- Assigment
-- waxaad soo samayni laba table oo kala ah 
-- customer iyo orders
-- way isku xidhan yihiin midkastana waxa ku jira 
-- 50 dhaato sidoo kale waa inay lahaadaan 
-- Joins gaar ahaan Joinka (FullJoin)