/*Creating a new database*/
CREATE database august;
/*using the database august*/
USE august;
/*Create a table customers in the database august*/

CREATE TABLE CUSTOMERS (ID INT(5), 
Name VARCHAR(20), 
Email VARCHAR(25), 
Age INT(3), 
Gender VARCHAR(8)
);

DROP TABLE CUSTOMERS;

CREATE TABLE CUSTOMERS (
	ID INT NOT NULL auto_increment, 
	Name VARCHAR(20) NOT NULL, 
	Email VARCHAR(25) NOT NULL, 
	Age INT, 
	Gender VARCHAR(8),
    primary key (ID)
);
DESC customers;

/*ALTER Command*/
ALTER TABLE customers ADD DOB date;
ALTER TABLE customers DROP Age;
DESC customers;

ALTER TABLE customers MODIFY Email varchar(30);
DESC customers;

/*Insert Command*/
INSERT into customers (ID,Name,Email,Gender,DOB) values (1,'Anshu','anshu@xyz.com','Male','20200505');
INSERT into customers values (2,'John','john@xyz.com','Male','20200505');
INSERT into customers (Name,Email,Gender) values ('Gilang','gilang@xyz.com','Male');
SELECT * from customers;

Update customers set DOB='19810401' where ID = 3;
Update customers set DOB="19950401", Email="nobody@xyz.com" where ID = 1;
SELECT * from customers;

INSERT into customers (Name,Email,Gender,DOB) values ('Max','max@xyz.com','Male','20000505');

DELETE from customers where ID = 4;
SELECT * from customers;

/***********/

select ID,Name,DOB from customers;

select * from customers where DOB < "20000101";
select * from customers where Gender = "Male";
select ID,Email from customers where Gender = "Male";

select * from customers limit 2;

select * from customers where DOB < "20000101" and Gender = "Male";
select * from customers where DOB < "20000101" or Gender = "Male";

/*************************************************************/
CREATE TABLE employee (
		Id INT NOT NULL,
		Name VARCHAR(30) NOT NULL,
		Age INT NOT NULL,
		Address VARCHAR(200),
		Salary NUMERIC(30),
		City varchar(20),
    PRIMARY KEY (Id));
    
insert into employee values(1, "John",32, "New York", 12455,'NY');
insert into employee values(2, "Robert",25, "London", 48755,'NY');
insert into employee values(3, "Juan",28, "Paris", 13525,'LON');
insert into employee values(4, "Cello",18, "Jakarta", 78925,'LON');
insert into employee values(5, "Oscar",39, "Singapore", 13655,'LON');
insert into employee values(6, "Anshu",42, "Delhi", 12455,'KUL');
insert into employee values(7, "Rahul",21, "Kualalumpur", 78555,'KUL');

select * from employee;

/*Group by Operation*/
select City,sum(salary) from employee group by City;
select sum(salary) from employee;
select min(salary) from employee;
select max(salary) from employee;
select avg(salary) from employee;

/*Order by clause*/
select * from employee order by Age;
select * from employee order by Age desc;
select City, avg(salary) from employee group by City order by avg(salary) desc;

select * from employee order by Salary, Age desc;

/***