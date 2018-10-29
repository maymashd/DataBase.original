CREATE DATABASE lab6;
create table locations(
location_id serial primary key,
  street_address varchar(25),
  postal_code varchar (12),
  city varchar(30),
  state_province varchar(12)
);
create table departments(
department_id serial primary key,
  department_name varchar (50) unique,
  budget integer,
  location_id integer references locations
);
create table employees (
  emplyee_id  serial primary key,
  first_name varchar(50),
  last_name varchar (50),
  email varchar(50),
  phone_number varchar(20),
  salary integer,
  department_id integer references departments
) ;
insert into locations (street_address, postal_code, city, state_province) values ('Tolebi','121202','Almaty','Almalinskee');
insert into locations (street_address, postal_code, city, state_province) values ('Kazybek be','121202','Almaty','Almalinskee');
insert into locations (street_address, postal_code, city, state_province) values ('Aiteke be','1212','Almaty','Almalinskee');

select*from locations;

insert into departments (department_name, budget, location_id) values ('health',100000,1);
insert into departments (department_name, budget, location_id) values ('sport',120000,2);
insert into departments (department_name, budget, location_id) values ('education',150000,1);
insert into departments (department_name, budget, location_id) values ('smile',150000,1);


insert into departments (department_id,department_name, budget, location_id) values (40,'Programming',150000,1);
select *from departments;

insert into employees (first_name, last_name, email, phone_number, salary, department_id)
values ('Dastan','Maimash','maymashd@mail.ru','87771318788',1000000,3);
insert into employees (first_name, last_name, email, phone_number, salary, department_id)
values ('Temirbek','Balabek','temirbek@mail.ru','87771311311',500000,2);
insert into employees (first_name, last_name, email, phone_number, salary, department_id)
values ('Aktoty','Rysdaulet','aktoty@mail.ru','87770000000',100000,2);
select*from employees;
insert into employees (first_name, last_name, email, phone_number, salary, department_id)
values ('Tolebi','Serikuly','tole@mail.ru','87771231223',200000,40);
insert into employees (first_name, last_name, email, phone_number, salary)
values ('axaxa','axaxa','axaxa@mail.ru','877712312axa',200000);

select*from employees;

select*from employees;

select employees.first_name,employees.last_name,employees.department_id,department_name
from employees left join departments on employees.department_id=departments.department_id;


select employees.first_name,employees.last_name,employees.department_id,department_name
from employees join departments
on (employees.department_id=40 or employees.department_id=80) and employees.department_id=departments.department_id  ;

select employees.first_name,employees.last_name,departments.department_name,locations.city,locations.state_province
from employees left join departments on employees.department_id=departments.department_id
left join locations on locations.location_id=departments.location_id;

select *from departments where departments.department_id not in (select department_id from employees);

select first_name, last_name, d.department_id, d.department_name from employees as e
left join departments as d on e.department_id = d.department_id;



