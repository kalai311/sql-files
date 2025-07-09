use dummy;

create table student(
id int primary key,
name varchar(50),
age int
);

alter table student add grade varchar(50);

alter table student rename column grade to Final_Grade;

alter table student add constraint primary key(id);


insert into student(id,name,age,final_grade)values(101,'Karthik',20,'A'),
(102,'vicky',20,'A'),
(103,'kalai',25,'B'),
(104,'radha',26,'C'),
(105,'mareesh',24,'A'),
(106,'vignesh',23,'D'),
(107,'Kalaiselvi',26,'B'),
(108,'suga priya',27,'C'),
(109,'santhosh',29,'A'),
(110,'kalai',20,'A');

select*From student;

update student set age=18 where id=105;

delete from student where id=101;

select * from student where age = 19;

select * from student where name='kalai' or name='vicky';
employee
select * from student where name in ('kalai','vicky');

select * from student where final_grade in('a','b') and age>=20;

select * from student where age between 18 and 20;

select * from student where age<=18;

select * from student where final_grade > 'A';

select count(*) from student;

select avg(age) from student;

select avg(Age) from student where final_grade='a' or final_grade='B';

select count(name),final_grade from student group by final_grade order by final_Grade desc;

select count(name),final_grade from student group by final_grade order by final_Grade desc;

select count(*),final_grade from student group by final_grade order by final_grade asc limit 1;

select avg(age),final_grade from student group by final_grade having avg(Age)>23;

select count(name),final_grade from student group by final_grade having count(name)>3;

select avg(age),final_grade from student group by final_grade having avg(Age) between 20 and 25;

select name,age from student order by age asc;

select name,age from student where final_grade in('a','b') order by age desc;


















