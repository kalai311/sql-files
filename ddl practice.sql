create table students(
	student_id int,
    name varchar(100),
    email varchar(100),
    dob date
    );
    
    create table course(
    course_id int,
    course_name varchar(100),
    student_id int);
    
    alter table students add column phone_number varchar(15)
    
	alter table students rename column dob to date_of_birth
    
    alter table students change phone_number phone_number varchar(100)
    
    alter table students drop column email
    
    rename table students to college_students 
    
    drop table course
    