use etl1;

create table emp11(id int, fname varchar(10), lname varchar(10), salary int, gender varchar(10));
select * from emp11;
create table emp11(id int, fname varchar(10), lname varchar(10), salary int, gender varchar(10));
select *from emp11;
insert into emp11
values(1,'Ganesh','Patel',57,'M'),
(2,'Mohit','Jasrotia',78,'M'),
(3,'Ruhi','Jaiswal',82,'F'),
(4,'Abhi','Pandey',67,'M'),
(5,'Kanchan','Gupta',93,'F'),
(6,'Juhi','Joshi',97,'F'),
(7,'Krishna','Patil',88,'M'),
(8,'Aditi','Pandey',82,'F'),
(9,'Bhavesh','Singh',87,'M'),
(10,'Preeti','Sharma',77,'F');

select * from emp11;

-- show the salary of all employees
select salary from emp11;

-- show the fname and salaries of all employee
select fname, salary from emp11;

-- show the fnam having salary greater than 85
select fname,salary from emp11 where salary >85;

-- show the fname,lname of employee which are female
select  fname,lname,gender from emp11 where gender ='F';

-- show the details of employees which are male and having salary greater than 80
select * from emp11 where gender='M' and salary>80;

-- show the details of id 2,3,5,7,8
select * from emp11 where id in (1,2,3,5,7,8) ;

 -- show the details of employees having salary from 50 to 70
 select * from emp11 where salary between 50 and 70;
 
-- show the details of juhi and mohit
select * from emp11 where fname in ('juhi','mohit');

-- show the details of all employees except preeti.
select * from emp11 where fname not in ('preeti');

-- add details of ram prasad earning 75 at id 11
insert into emp11 values(11,'ram','prasad',75,'M');
select * from emp11;

-- add gouri sharma to table without salary,gender & id
insert into emp11 values('gouri','sharma');
select * from emp11;

-- add karan earning 70 to table
insert into emp11 (fname,salary) values('karan',70);
select * from emp11;

-- show the details of employees having 'a' in their fname
select * from emp11 where fname like '%a%';

-- show the details of employees having 'u' at 2nd position of their fname.
  select * from emp11 where fname like '_u%';
  
-- show the details of employees having 't' at third last position of their lname
  
select * from emp11 where fname like '%__';

-- delete, truncate, drop --

-- delete the detail of employees having 't' at third thier lname

-- delete details of karan
delete from emp11 where fname='karan';
select * from emp11;

-- detele the details of id 2 and 5
delete from emp where id=2 or id=5;

-- truncate--

-- delete all the details from emp
truncate emp11;
select * from emp11;

-- delete the table emp
drop table emp11;
select * from emp11;

select * from emp11;

-- add column location
alter table emp11 add column location varchar(30);
select *from emp11;

-- add column pincode 
alter table emp11 add column pincode int;
select * from emp11;






-- change the fname of id 7 to harsh
update emp11 set fname='harsh' where id=7;
select * from emp11;

-- change the salary of id 1 and 9 to 77
update emp11 set salary=77 where id in (1,9);
select * from emp11;

-- change the lname of joshi to ghosh
update emp11 set lname='ghosh' where lname='joshi';
select * from emp11;

-- add column location
alter table emp11 add column location varchar(30);
select * from emp11;

-- insert the values of location of females to vashi
update emp11 set location='vashi' where gender='female';
select * from emp11;


-- limit--

select * from emp11 limit 3;

-- show the fname and lname of 4th and 5th row
select fname,lname from emp11 limit 3,2;

-- show the details of employees of 7,8 and 9th row
select * from emp11 limit 6,3;

-- show the details of first 2 femals
select * from emp11 where gender='f' limit 2;

-- order by--
-- sort the column salary in ascending order
select salary from emp11 order by salary ;

-- show the details of employees according to their id in decreasing order
select * from emp11 order by id desc;

-- show the fname and lname according to their salrary in decreasing order
select fname,lname,salary from emp11 order by salary desc;

-- show the details of highest paid employee
select * from emp11 order by salary desc limit 1;

-- show the details of lowest paid emp
select * from emp11 order by salary limit 1;

-- show  the top 3 highest paid empl
select * from emp11 order by salary desc limit 3;

-- show the details of employee having 3rd highest salary
select * from emp11 order by salary desc limit 2,1;

-- show the details of employee having 2nd lowest salary
select *from emp11 order by salary limit 1,1;

-- show the details of highest paid female employee
select * from emp11 where gender='f' order by salary desc limit 1;

-- show the details of highest paid male emp
select * from emp11 where gender='m' order by salary desc limit 1;

-- show the fname,salary pf 2nd highest paid femal
select fname,salary from emp11 where gender='f' order by salary desc limit 1,1;

-- min,max,sum,avg,count--

-- show the highest salary
select max(salary) from emp11;

-- show the average salary of all employees
select avg(salary) from emp11;

-- show the total salary of all emp
select sum(salary) from emp11;

-- show the lowest salary
select min(salary) from emp11;

select count(6) from emp11;

select count(location) from emp11;

select * from emp11;

-- alias--

select salary ,(salary/2) as half_sal from emp11;

-- show the double pf salary of all employees as d_sal
select salary , (salary*2) as d_sal from emp11;

-- show the new salary as n_sal of employees having values as salary-id
select salary,(salary-id) as n_sal from emp11;

select * from emp11;








