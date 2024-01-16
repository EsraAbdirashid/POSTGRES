create table persons(
    person_id serial primary key,
    full_name text not null,
    address text not null,
    phone int not null UNIQUE
);

create table orders(
    order_id serial primary key,
    order_number int,
    order_date timestamp default  CURRENT_TIMESTAMP,
    person_id int,
    CONSTRAINT fk_person_id FOREIGN key (person_id) REFERENCES persons(person_id)
);


select *from persons;
insert into persons(full_name,address,phone)
VALUES('Faarah Yuusuf','15aad',654321);

select *from orders;
insert into orders(order_number,person_id)
VALUES(2121,3);


-- Full Join for TABLES
select *from persons full join orders on persons.person_id = orders.order_id ;

-- Truncate table 
TRUNCATE table orders;

-- Agrigations = abla ablayn;

-- Count
select count(persons) from persons;

-- Sum 
select *from orders;
select sum(order_number) from orders;

