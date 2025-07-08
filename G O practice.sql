use dummy

create table employee(
employeeid int,
first_name varchar(10),
last_name varchar(10),
department varchar(100),
salary int
);

insert into employee values (1,'vicky','ma','HR',50000),
(2,'kalai','selvi','IT',60000),
(3,'radha','ma','IT',62000),
(4,'suga','priya','HR',54000),
(5,'eva','davish','Finance',58000),
(6,'mike','brown','finance',59000)

select*from employee 

select employee name

select * from employee order by last_name asc

select * from employee where department='IT' order by salary desc;

select sum(salary),department from employee group by department

select avg(salary),department from employee group by department order by department asc

select avg(salary),department from employee group by department order by avg(salary) desc limit 1;



