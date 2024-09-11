Create table Employee(emp_id int,first_name varchar(50),last_name varchar(50),birth_date date,sex char,salary varchar(50),super_id varchar(50),branch_id int,primary key(emp_id));
insert into Employee values('100','David','Wallace','1967-11-17','M','250000','NULL','1');
insert into Employee values('101','Jan','Levinson','1961-05-11','F','110,000','100','1');
insert into Employee values('102','Michael','Scott','1964-03-15','M','75,000','100','2');
insert into Employee values('103','Angela','Martin','1971-06-25','F','63,000','102','2');
insert into Employee values('104','Kelly','Kapoor','1980-02-05','F','55,000','102','2');
insert into Employee values('105','Stanley','Hudson','1958-02-19','M','69,000','102','2');
insert into Employee values('106','Josh','Porter','1969-09-05','M','78,000','100','3');
insert into Employee values('107','Andy','Bernard','1973-07-22','M','65,000','106','3');
insert into Employee values('108','Jim','Halpert','1978-10-01','M','71,000','106','3');

Create table Branch(branch_id int,branch_name varchar(50),mgr_id int,mgr_start_date date,primary key(branch_id));
insert into Branch values('1','Corporate','100','2006-02-09');
insert into Branch values('2','Scranton','102','1992-04-06');
insert into Branch values('3','Stamford','106','1998-02-03');

Create table Client(client_id varchar(50),client_name varchar(50),branch_id int,primary key(client_id));
insert into Client values('400','Dunmore Highschool','2');
insert into Client values('401','Lackawana Country','2');
insert into Client values('402','FedEx', 3);
insert into Client values('403','John Daly Law,LLC','3');
insert into Client values('404','Scranton Whitepages','2');
insert into Client values('405','Times Newspaper','3');
insert into Client values('406','FedEx','2');

Create table Works_With (emp_id int,client_id int,total_sales varchar(50));
insert into Works_With (emp_id, client_id, total_sales)
values
(105, 400, 55000),
(102, 401, 267000),
(108, 402, 22500),
(107, 403, 5000),
(108, 403, 12000),
(105, 404, 33000),
(107, 405, 26000),
(102,406, 15000),
(105,406,130000);

create table Branch_Supplier (branch_id int,supplier_name varchar(260),supply_type varchar(260),primary key(branch_id,supplier_name));
insert into Branch_Supplier (branch_id, supplier_name, supply_type)
values
(2, 'Hammer Mill', 'Paper'),
(2, 'Uni-ball', 'Writing Utensils'),
(3, 'Patriot Paper', 'Paper'),
(2, 'J.T. Forms & Labels', 'Custom Forms'),
(3, 'Uni-ball', 'Writing Utensils'),
(3, 'Hammer Mill', 'Paper'),
(3, 'Stamford Lables', 'Custom Forms');
