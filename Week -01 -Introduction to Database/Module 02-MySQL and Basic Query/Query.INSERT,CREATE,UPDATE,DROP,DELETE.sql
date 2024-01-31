create table student(
Roll char(4) primary key,
name varchar(50),
marks double
);

insert into student 
(Roll ,name,marks) values('01','arman sardar',90);
insert into student 
(Roll ,name) values('02','minara');
UPDATE  student
SET name ='arsa'
WHERE Roll='01';
drop table student;
DELETE FROM student
where Roll ='01'
