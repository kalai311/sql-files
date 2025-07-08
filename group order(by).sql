use dummy
create table studentss(
	student_name varchar(200),
    mark int,
    department varchar(100)
    );
insert into studentss values('kalai',67,'CSE'),
('vicky',89,'ECE'),
('radha',23,'MECH'),
('abdul',63,'CSE'),
('kadhir',88,'CSE'),
('john',81,'MECH'),
('manoj',91,'CSE'),
('mani',50,'ECE')

select * from studentss

order by

select  student_name, mark from studentss order by mark desc;
select  student_name, mark from studentss order by mark asc;

group by

select max(mark) from studentss



