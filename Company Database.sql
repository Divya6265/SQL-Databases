--Data Source=LAPTOP-B2ITS3M7;Initial Catalog=mydatabase


create table employee(Fname varchar(15) NOT NULL,Minit char, Lname varchar(15) NOT NULL, Ssn char(9) primary key, Bdate date, 
Address varchar(30), Sex char, Salary decimal(10,2), Super_ssn char(9), Dno int NOT NULL);


insert into employee values('John', 'B','Smith',123456789,'1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, 333445555,5);
insert into employee values('Franklin', 'T','Wong',333445555,'1955-12-08', '638 Voss, Houston, TX', 'M', 40000, 888665555,5);
insert into employee values('Alicia', 'J','Zelaya',999887777,'1968-01-19', '3321 Castle, Spring, TX', 'F', 25000, 987654321,4);
insert into employee values('Jennifer', 'S','Wallace',987654321,'1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, 888665555,4);
insert into employee values('Ramesh', 'K','Narayan',666884444,'1962-09-15', '975 Fire oak, Humble, TX', 'M', 38000, 333445555,5);
insert into employee values('Joyce', 'A','English',453453453,'1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, 333445555,5);
insert into employee values('Ahmad', 'V','Jabbar',987887987,'1969-03-29', '980 Dallas, Houston, TX', 'M', 25000, 987654321,4);
insert into employee values('James', 'E','Borg',888665555,'1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL,1);


select * from employee;




create table Department(Dname varchar(15) not null, Dnumber  int not null, Mgr_ssn char(9) not null, Mgr_start_date date, primary key(Dnumber), unique(Dname));

insert into Department values('Research',5,333445555,'1988-05-22');
insert into Department values('Administration',4,987654321,'1995-01-01');
insert into Department values('Headquarters',1,888665555,'1981-06-19');

select * from Department;

create table Dept_Locations(Dnumber int not null, Dlocation varchar(15) not null, primary key(Dnumber, Dlocation));

insert into Dept_Locations values(1,  'Houston');
insert into Dept_Locations values(4,  'Stafford');
insert into Dept_Locations values(5,  'Bellaire');
insert into Dept_Locations values(5,  'Sugarland');
insert into Dept_Locations values(5,  'Houston');


select * from Dept_Locations;



create table Project(Pname varchar(15) not null, Pnumber int not null, Plocation varchar(15), Dnum int not null, primary key(Pnumber), unique(Pname));

insert into Project values('ProductX', 1, 'Bellaire', 5 );
insert into Project values('ProductY', 2, 'Sugarland', 5 );
insert into Project values('ProductZ', 3, 'Houston', 5 );
insert into Project values('Computerization', 10, 'Stafford', 4 );
insert into Project values('Reorganization', 20, 'Houston', 1 );
insert into Project values('Newbenefits', 30, 'Stafford', 4);

select * from Project;


create table Works_On(Essn char(9) not null, Pno int not null, Hours decimal(3,1) not null, primary key(Essn, Pno));

insert into Works_on values(123456789, 1, 32.5);
insert into Works_on values(123456789, 2, 7.5);
insert into Works_on values(666884444, 3, 40.0);
insert into Works_on values(453453453, 1, 20.0);
insert into Works_on values(453453453, 2, 20.0);
insert into Works_on values(333445555, 2, 10.0);
insert into Works_on values(333445555, 3, 10.0);
insert into Works_on values(333445555, 10, 10.0);
insert into Works_on values(333445555, 20, 10.0);
insert into Works_on values(999887777, 30, 30.0);
insert into Works_on values(999887777, 10, 10.0);
insert into Works_on values(987987987, 10, 35.0);
insert into Works_on values(987987987, 30, 5.0);
insert into Works_on values(987654321, 30, 20.0);
insert into Works_on values(987654321, 20, 15.0);
insert into Works_on values(888665555, 20, 16.0);

select * from Works_on;

create table Dependent( Essn char(9) not null, Dependent_name varchar(15) not null, Sex char, Bdate date, Relationship varchar(8), primary key(Essn, Dependent_name));

insert into Dependent values(333445555, 'Alice', 'F', '1986-04-05','Daughter');
insert into Dependent values(333445555, 'Theodore', 'M', '1983-10-25','Son');
insert into Dependent values(333445555, 'Joy', 'F', '1958-05-03','Spouse');
insert into Dependent values(987654321, 'Abner', 'M', '1942-02-28','Spouse');
insert into Dependent values(123456789, 'Michael', 'M', '1988-01-30','Son');
insert into Dependent values(123456789, 'Alice', 'F', '1988-12-30','Daughter');
insert into Dependent values(123456789, 'Elizabeth', 'F', '1967-05-05','Spouse');

select * from Dependent;




CREATE TABLE Company_Locations (Location_ID INTEGER PRIMARY KEY,Location_Name VARCHAR(255),Address VARCHAR(255),City VARCHAR(255),State VARCHAR(255),Zip_Code INTEGER,Country VARCHAR(255));

INSERT INTO Company_Locations (Location_ID, Location_Name, Address, City, State, Zip_Code, Country)
VALUES (1, 'HQ', 'Stafford', 'New York', 'NY', 10001, 'USA'),
       (2, 'West Coast Office', 'Stafford', 'Los Angeles', 'CA', 90001, 'USA'),
       (3, 'East Coast Office', 'Stafford', 'Washington', 'DC', 20001, 'USA'),
       (4, 'Chicago Office', 'Houston', 'Chicago', 'IL', 60001, 'USA'),
       (5, 'New England Office', 'Houston', 'Boston', 'MA', 02101, 'USA'),
       (6, 'London Office', 'Houston', 'London', 'England', 50001 , 'UK'),
       (7, 'Paris Office', 'Sugarland', 'Paris', 'France', 75008, 'France'),
       (8, 'Berlin Office', 'Sugarland', 'Berlin', 'Germany', 10117, 'Germany'),
       (9, 'Seoul Office', 'Bellaire', 'Seoul', 'South Korea', 135-100, 'South Korea'),
       (10, 'Tokyo Office', 'Bellaire', 'Tokyo', 'Japan', 105-0013, 'Japan');
       
SELECT * from Company_Locations ;

alter table Company_Locations add foreign key (Location_Name) references employee();
alter table Company_Locations add foreign key (Dno) references Department(Dnumber);


alter table employee add foreign key (Super_ssn) references employee(Ssn);
alter table employee add foreign key (Dno) references Department(Dnumber);


alter table Department add foreign key(Mgr_ssn) references employee(Ssn);
alter table Dept_Locations add foreign key (Dnumber) references Department(Dnumber);




alter table Project add foreign key(Dnum) references Department(Dnumber);
alter table Works_On add foreign key(Pno) references Project(Pnumber);

alter table Dependent add foreign key(Essn) references employee(Ssn);

drop table Company_Locations;