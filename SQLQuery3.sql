use bank;
Go
create schema bank
-------------------------------------------------------
create table branches(
id_branches int primary key,
name varchar not null,
address varchar not null,
id_ban int foreign key references bank (id_bank))
----------------------------------------------------------
create table bank(
id_bank int primary key,
name varchar not null,
phone int not null)
------------------------------------------------------------
create table accounts(
id_accounts int primary key,
username varchar not null,
password int not null,
balance int not null,
id_banlh int foreign key references bank.customer (id_customer))
---------------------------------------------------------------
create table employess(
id_employess int primary key,
address varchar not null,
phone int not null,
gender varchar not null,
name varchar not null,
id_banl int foreign key references bank (id_bank))
---------------------------------------------------------------------
use bank
create table transactions(
id_transactions int primary key,
name varchar not null,
amount int not null,
date VARCHAR(30) not null,
id_accounts int not null foreign key references bank.accounts (id_accounts)) 
-----------------------------------------------------------
create table customer_service(
id_customer_service int primary key,
name varchar not null,
report varchar not null)
-------------------------------------------------------------
create table customer(
id_customer int primary key,
address varchar not null,
phone int not null,
name varchar not null,
id_banl int foreign key references customer_service (id_customer_service))
---------------------------------------------------------------
create table loan(
id_loan int primary key,
loan_type varchar(50) not null,
amount int not null,
id_Customer int foreign key references bank.customer (id_customer))
--------------------------------------------------------------
create table payments(
id_payments int primary key,
date VARCHAR(50) not null,
amount int not null)
---------------------------------------------------------
create table manage(
id_ba int foreign key references employess (id_employess),
id_bd int foreign key references accounts (id_accounts))
-----------------------------------------------------------
create table pays(
id_ba int foreign key references loan (id_loan),
id_bd int foreign key references payments (id_payments))
----------------------------------------------------------
INSERT INTO bank.bank (id_bank, name, phone) VALUES
(1, 'Bank A', '0123456789'),
(2, 'Bank B', '0123933789'),
(3, 'Bank C', '0128856789')
---------------------------------------------------
INSERT INTO bank.branches (id_branches, name, address, id_ban) VALUES
(1, 'Branch 1', 'Address 1', 1),
(2, 'Branch 2', 'Address 2', 1),
(3, 'Branch 3', 'Address 3', 2),
(4, 'Branch 4', 'Address 4', 2),
(5, 'Branch 5', 'Address 5', 3),
(6, 'Branch 6', 'Address 6', 3),
(7, 'Branch 7', 'Address 7', 1),
(8, 'Branch 8', 'Address 8', 2),
(9, 'Branch 9', 'Address 9', 1),
(10, 'Branch 10', 'Address 10', 2)
-----------------------------------------------------
INSERT INTO bank.accounts (id_accounts, username, password, balance, id_banlh)
 VALUES
(1, 'User1', 1234, 1000, 1),
(2, 'User2', 5678, 2000, 2),
(3, 'User3', 9876, 1500, 3),
(4, 'User4', 4321, 3000, 4),
(5, 'User5', 8765, 2500, 5),
(6, 'User6', 1357, 1200, 6),
(7, 'User7', 2468, 1800, 7),
(8, 'User8', 9753, 2200, 8),
(9, 'User9', 8642, 1900, 9),
(10, 'User10', 1593, 1700, 10),
(11, 'User11', 3579, 2800, 11),
(12, 'User12', 4682, 2400, 12),
(13, 'User13', 7890, 1300, 13),
(14, 'User14', 2461, 1600, 14),
(15, 'User15', 5312, 2100, 15),
(16, 'User16', 6420, 2700, 16),
(17, 'User17', 9874, 2300, 17),
(18, 'User18', 1029, 1400, 18),
(19, 'User19', 3546, 2000, 19),
(20, 'User20', 1845, 1900, 20)
--------------------------------------------------
INSERT INTO bank.employess (id_employess, address, phone, gender, name, id_banl)
VALUES
(1, 'Cairo', '010938441', 'Male', 'Emp1', 1),
(2, 'Alex', '011298411', 'Female', 'Emp2', 2),
(3, 'Beni-suef', '011111111', 'Male', 'Emp3', 3),
(4, 'ALEX', '012911111', 'Female', 'Emp4', 2),
(5, 'Menia', '012111111', 'Male', 'Emp5', 1),
(6, 'cairo', '011111111', 'Female', 'Emp6', 3),
(7, 'Cairo', '011999111', 'Male', 'Emp7', 1),
(8, 'Alex', '011111111', 'Female', 'Emp8', 3),
(9, 'Beni-suef', '011111111', 'Male', 'Emp9', 2),
(10, 'Beni-Suef', '012451111', 'Female', 'Emp10', 2),
(11, 'Cairo', '011111111', 'Male', 'Emp11',  1),
(12, 'Alex', '011111111', 'Female', 'Emp12',  2),
(13, 'Cairo', '011111111', 'Male', 'Emp13',  3),
(14, 'Alex', '011111111', 'Female', 'Emp14', 3),
(15, 'Beni-suef', '012111111', 'Male', 'Emp15', 3),
(16, 'Menofia', '012153131', 'Female', 'Emp16', 1),
(17, 'Assuit', '011111111', 'Male', 'Emp17', 1 ),
(18, 'Sohag', '010111111', 'Female', 'Emp18', 2),
(19, 'Cairo', '010161111', 'Male', 'Emp19', 1),
(20, 'Alex', '012345111', 'Female', 'Emp20', 2);
------------------------------------------------------------------- 
INSERT INTO transactions (id_transactions, name, amount, date,id_accounts) VALUES
(1, 'Transaction 1', 500, '2023-01-01', 1),
(2, 'Transaction 2', 1000, '2023-01-02', 2),
(3, 'Transaction 3', 700, '2023-01-03', 3),
(4, 'Transaction 4', 1200, '2023-01-04', 4 ),
(5, 'Transaction 5', 800, '2023-01-05', 5 ),
(6, 'Transaction 6', 1500, '2023-01-06', 6 ),
(7, 'Transaction 7', 300, '2023-01-07', 7),
(8, 'Transaction 8', 600, '2023-01-08', 8),
(9, 'Transaction 9', 900, '2023-01-09', 9),
(10, 'Transaction 10', 1100, '2023-01-10', 10),
(11, 'Transaction 11', 950, '2023-01-11', 11),
(12, 'Transaction 12', 1300, '2023-01-12', 12),
(13, 'Transaction 13', 400, '2023-01-13', 13),
(14, 'Transaction 14', 750, '2023-01-14', 14),
(15, 'Transaction 15', 850, '2023-01-15', 15),
(16, 'Transaction 16', 1000, '2023-01-16', 16),
(17, 'Transaction 17', 600, '2023-01-17', 17),
(18, 'Transaction 18', 1200, '2023-01-18', 18),
(19, 'Transaction 19', 300, '2023-01-19', 19),
(20, 'Transaction 20', 950, '2023-01-20', 20)
---------------------------------------------------------------- 
INSERT INTO bank.customer_service (id_customer_service, name, report) VALUES
(1, 'Service 1', 'Report 1'),
(2, 'Service 2', 'Report 2'),
(3, 'Service 3', 'Report 3'),
(4, 'Service 4', 'Report 4'),
(5, 'Service 5', 'Report 5'),
(6, 'Service 6', 'Report 6'),
(7, 'Service 7', 'Report 7'),
(8, 'Service 8', 'Report 8'),
(9, 'Service 9', 'Report 9'),
(10, 'Service 10', 'Report 10'),
(11, 'Service 11', 'Report 11'),
(12, 'Service 12', 'Report 12'),
(13, 'Service 13', 'Report 13'),
(14, 'Service 14', 'Report 14'),
(15, 'Service 15', 'Report 15'),
(16, 'Service 16', 'Report 16'),
(17, 'Service 17', 'Report 17'),
(18, 'Service 18', 'Report 18'),
(19, 'Service 19', 'Report 19'),
(20, 'Service 20', 'Report 20');
------------------------------------------------
INSERT INTO bank.customer (id_customer, address, phone, name, id_banl) VALUES
(1, 'Cust Address 1', '01222222224', 'Cust1', 1),
(2, 'Cust Address 2','01222222224', 'Cust2', 2),
(3, 'Cust Address 3', '01222222224', 'Cust3', 3),
(4, 'Cust Address 4', '01222222224', 'Cust4', 4),
(5, 'Cust Address 5','01222222224', 'Cust5', 5),
(6, 'Cust Address 6','01222222224', 'Cust6', 6),
(7, 'Cust Address 7','01222222224', 'Cust7', 7),
(8, 'Cust Address 8','01222222224', 'Cust8', 8),
(9, 'Cust Address 9', '01222222224', 'Cust9', 9),
(10, 'Cust Address 10','01222222224', 'Cust10', 10),
(11, 'Cust Address 11','01222222224', 'Cust11', 11),
(12, 'Cust Address 12', '01222222224', 'Cust12', 12),
(13, 'Cust Address 13','01222222224', 'Cust13', 13),
(14, 'Cust Address 14', '01222222224', 'Cust14', 14),
(15, 'Cust Address 15', '01222222224', 'Cust15', 15),
(16, 'Cust Address 16','01222222224', 'Cust16', 16),
(17, 'Cust Address 17','01222222224', 'Cust17', 17),
(18, 'Cust Address 18','01222222224', 'Cust18', 18),
(19, 'Cust Address 19','01222222224', 'Cust19', 19),
(20, 'Cust Address 20', '01222222224', 'Cust20', 20)
------------------------------------------------------------ 
INSERT INTO loan (id_loan, loan_type, amount,id_Customer) VALUES
(1, 'Personal Loan', 5000, 1),
(2, 'Home Loan', 10000, 2),
(3, 'Car Loan', 7500, 3),
(4, 'Education Loan', 12000, 4),
(5, 'Business Loan', 9000, 5),
(6, 'Medical Loan', 15000, 6),
(7, 'Vacation Loan', 3000, 7),
(8, 'Renovation Loan', 6000, 8),
(9, 'Wedding Loan', 9000, 9),
(10, 'Debt Consolidation Loan', 11000, 10),
(11, 'Emergency Loan', 9500, 11),
(12, 'Travel Loan', 13000, 12),
(13, 'Personal Loan', 4000, 13),
(14, 'Home Loan', 7500, 14),
(15, 'Car Loan', 8500, 15),
(16, 'Education Loan', 10000, 16),
(17, 'Business Loan', 6000, 17),
(18, 'Medical Loan', 12000, 18),
(19, 'Vacation Loan', 3000, 19),
(20, 'Renovation Loan', 9500, 20)
--------------------------------------
INSERT INTO payments (id_payments, date, amount) VALUES
(1, '2023-01-01', 500),
(2, '2023-01-02', 1000),
(3, '2023-01-03', 700),
(4, '2023-01-04', 1200),
(5, '2023-01-05', 800),
(6, '2023-01-06', 1500),
(7, '2023-01-07', 300),
(8, '2023-01-08', 600),
(9, '2023-01-09', 900),
(10, '2023-01-10', 1100),
(11, '2023-01-11', 950),
(12, '2023-01-12', 1300),
(13, '2023-01-13', 400),
(14, '2023-01-14', 750),
(15, '2023-01-15', 850),
(16, '2023-01-16', 1000),
(17, '2023-01-17', 600),
(18, '2023-01-18', 1200),
(19, '2023-01-19', 300),
(20, '2023-01-20', 950)
-----------------------------------------
INSERT INTO bank.manage (id_ba, id_bd) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20)
----------------------------------------
INSERT INTO pays (id_ba, id_bd) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20)
-----------------------------------------
ALTER TABLE bank.bank
ALTER COLUMN phone VARCHAR(11)
----------------------------------------- 
ALTER TABLE bank.bank
ALTER COLUMN name VARCHAR(50)
-----------------------------------------
ALTER TABLE bank.branches
ALTER COLUMN name VARCHAR(50)
-----------------------------------------
ALTER TABLE bank.transactions
ALTER COLUMN date VARCHAR(30)
----------------------------------------
DROP TABLE bank.loan
---------------------------------------
DROP TABLE bank.payments
--------------------------------------
DROP TABLE bank.pays
---------------------------------------
UPDATE bank.customer
SET phone = '010827873'
WHERE id_customer = 10
---------------------------------------
