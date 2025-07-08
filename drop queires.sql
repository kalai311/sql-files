rename table student to users;

alter table users change marks name varchar(20);
insert into  users (student_roll,name) values(2456,'kalai'),(2455,'radha');

select * from users;

alter table users add constraint pk_users PRIMARY KEY (student_roll);

insert into  users (student_roll,name) values(2456,'kalai');
 
 
 alter table users drop constraint pk_users;
 
 ALTER TABLE users DROP PRIMARY KEY;
 
 





