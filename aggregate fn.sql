use dummy;
select*from employee;

select count(*) from employee where department='IT';

select count(*),department from employee group by department;

select min(salary),department from employee group by department;

select max(salary),department from employee group by department;

select avg(Salary),department from employee group by department;

select sum(Salary),department from employee group by department;




select avg(Salary),department from employee group by department 
having avg(salary)<60000;

