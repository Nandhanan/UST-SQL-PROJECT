create database projectsql;
use projectsql;
create table employee(ecode int,name varchar(20),desig varchar(20),sgrade varchar(10),doj date,dob date);
create table salgrade(sgrade varchar(30),salary int,hra int);

insert into employee values(101,'Vikrant','Executive','S03','2003-03-23','1980-01-13'),
						   (102,'Ravi','Head-IT','S02','2010-02-12','1987-07-22'),
                           (103,'John Cena','Receptionist','S03','2009-06-24','1983-02-24'),
                           (105,'Azhar Ansari','GM','S02','2009-08-11','1984-03-03'),
                           (108,'Priyam Sen','executive','S01','2004-12-29','1982-01-19');
                           
insert into salgrade values('S01',56000,18000),
					       ('S02',32000,12000),
                           ('S03',24000,8000);

/*drop tables employee,salgrade; */
select * from employee;

/* desecnding order based on DOJ */
select * from employee e
cross join salgrade s
    on e.sgrade=s.sgrade order by doj desc;
    

/* Name and Desig whose Sgrade is either 'S01' or 'S02' */
select name,desig from employee
 where sgrade in ('S03' ,'S02');
 
 
 /* Name, Desig and Sgread who joined in 2009 */
 select name,desig,sgrade from employee where  YEAR(doj) =2009;
 
/* print all Sgrade and Annualsalary (an nualsalery is salary*12) */
 select sgrade,salary*12 as annualsalary from salgrade;
 