use master;
create table training_program(
	trgcode Int primary key,
    trgmodule varchar(40),
    price decimal(10,2)
    );
    
    insert into training_program values(501,"Excel Basic",3000),
    (502,"VBA Basic",4000),(503,"Power BI",5000),(504,"SQL",6000);
    
    select*From training_program;
    union
    select*From training_participants;

    
create table training_participants(
    stdname varchar(20),
    trgmodule varchar(40),
    location varchar(20),
    trgcode int, 
    foreign key(trgcode) references training_program(trgcode)
);

select*from training_participants

Insert into training_participants values("mahesh","Excel basic","Tamilnadu",501),
("mohan","Excel basic","chennai",502),
("vicky","power BI","karnataka",503),

;

create table employee(
name varchar(20),
age int,
salary int check(salary>5000)
);

insert into employee values("kalai",20,5500),("vicky",25,6000);

create table destudents(
name varchar(30),
dateofbirth date,
gender varchar(1),
country varchar(10) DEFAULT 'India'
);

insert into destudents values('vicky','30-09-2001','M');

INSERT INTO destudents (name, dateofbirth, gender)
VALUES ('Amit', '2001-08-15', 'M');

INSERT INTO destudents (name, dateofbirth, gender)
VALUES ('vicky', '2001-09-30', 'M');

select *from destudents;




