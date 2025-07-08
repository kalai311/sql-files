create table employees(
emp_id int,
name varchar(100),
department_id int);
select * from employees

INSERT into employees values(1,"Alice",101),(2,"Bob",102),(3,"Charlie",103)

create table departments(
dept_id int,
department_name varchar(100)
);

Insert into departments values (101,"HR"),(102,"IT"),(104,"Sales")
select * from departments

select employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id=departments.dept_id

select employees.name,
departments.department_name
from employees
RIGHT join departments
ON employees.department_id=departments.dept_id;

select employees.name,
departments.department_name
from employees
Left join departments
ON employees.department_id=departments.dept_id;

select employees.name,
departments.department_name
from employees
full join departments
ON employees.department_id=departments.dept_id;



