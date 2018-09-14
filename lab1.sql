Create database lab1;
Create table users2(
  id serial primary key,
 firstname varchar(50),
  lastname varchar(50)
);

alter table users2 drop column id;

alter table users2 add column id serial;

Alter table users2 add column isAdmin int ;
Alter table users2 Alter column isAdmin type boolean using users2.isAdmin::boolean;
Alter table users2 Alter column isAdmin set DEFAULT false;
alter table users2 Add CONSTRAINT pmp primary key(id);

select * from users2;


create table tasks(
id serial primary key,
name varchar(50),
user_id interger
);
drop table tasks;
drop database lab1;
/*
Create database mydb owner postgres;
create table employees(
  id serial primary key ,
  name varchar(50) not null,
  position char(10),
  salary integer default 10000,
constraint unique_position unique(position)
);
Alter table employees Drop constraint unique_position;
insert into employees (name,position,salary) values ('Mike','director',50000);
insert into employees (name,position) values ('John','programmer');

insert into employees (name,position,salary) values ('Mi','director',50000);
insert into employees (name,position) values ('Jn','progmmer');
select * from employees;
Alter table employees add column number int default 877713;
Alter table employees drop column number;
Alter table employees add column  created_at timestamp;
create table city1(

)inherits (employees);

 */
