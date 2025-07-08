create table college_students(
	student_id int,
    name varchar(100),
    email varchar(100),
    dob date
    );
    
insert into college_students values(1,'Alice Johnson','123456778','2001-05-12'),
(2,'Smith','123456779','2002-08-22'),(3,'Charlie','1234567767','2001-11-01')

select*From college_students

select name,dob
from college_students
where dob>'2001-05-12';

SET SQL_SAFE_UPDATES=0; 
update college_students
set email='9999999999999'
where name='smith';
SET SQL_SAFE_UPDATES=1; 

SET SQL_SAFE_UPDATES=0; 
DELETE FROM college_students WHERE student_id=3;
SET SQL_SAFE_UPDATES=1; 