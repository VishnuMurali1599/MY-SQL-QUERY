                """BASIC SQL QUERIES """

CREATE TABLE if not exists BANK_STAFFDETAILS
(
	age int ,
    job varchar(30),
    martial_status varchar(30),
    education  varchar (30),
    `default` varchar(30),
    balance int,
    housing varchar(30),
    loan varchar(30),
    contact varchar(20),
    `day` int,
    `month` varchar (30),
    duration int,
    campaign int,
    pdays int,
    previous int,
    poutcome varchar(30),
    y varchar (30)
)

USE 100_QUERY
insert into BANK_STAFFDETAILS
values (35,"management","married","tertiary","no",231,"yes","no","unknown",5,"may",139,1,-1,0,"unknown","no"),
(28,"management","single","tertiary","no",447,"yes","yes","unknown",5,"may",217,1,-1,0,"unknown","no"),
(42,"entrepreneur","divorced","tertiary","yes",2,"yes","no","unknown",5,"may",380,1,-1,0,"unknown","no"),
(58,"retired","married","primary","no",121,"yes","no","unknown",5,"may",50,1,-1,0,"unknown","no"),
(43,"technician","single","secondary","no",593,"yes","no","unknown",5,"may",55,1,-1,0,"unknown","no"),
(41,"admin.","divorced","secondary","no",270,"yes","no","unknown",5,"may",222,1,-1,0,"unknown","no"),
(29,"admin.","single","secondary","no",390,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",6,"yes","no","unknown",5,"may",517,1,-1,0,"unknown","no"),
(58,"technician","married","unknown","no",71,"yes","no","unknown",5,"may",71,1,-1,0,"unknown","no"),
(57,"services","married","secondary","no",162,"yes","no","unknown",5,"may",174,1,-1,0,"unknown","no"),
(51,"retired","married","primary","no",229,"yes","no","unknown",5,"may",353,1,-1,0,"unknown","no"),
(45,"admin.","single","unknown","no",13,"yes","no","unknown",5,"may",98,1,-1,0,"unknown","no"),
(57,"blue-collar","married","primary","no",52,"yes","no","unknown",5,"may",38,1,-1,0,"unknown","no"),
(60,"retired","married","primary","no",60,"yes","no","unknown",5,"may",219,1,-1,0,"unknown","no"),
(33,"services","married","secondary","no",0,"yes","no","unknown",5,"may",54,1,-1,0,"unknown","no"),
(28,"blue-collar","married","secondary","no",723,"yes","yes","unknown",5,"may",262,1,-1,0,"unknown","no"),
(56,"management","married","tertiary","no",779,"yes","no","unknown",5,"may",164,1,-1,0,"unknown","no"),
(32,"blue-collar","single","primary","no",23,"yes","yes","unknown",5,"may",160,1,-1,0,"unknown","no"),
(25,"services","married","secondary","no",50,"yes","no","unknown",5,"may",342,1,-1,0,"unknown","no")



SELECT *  FROM BANK_STAFFDETAILS


DELIMITER &&
CREATE procedure BANK()
BEGIN 
SELECT * FROM BANK_STAFFDETAILS;
END &&

CALL BANK()

################################################################################
#Q1 Write a query to retrieve all columns from a table named "employees".

SELECT * FROM BANK_STAFFDETAILS
CALL BANK()

#Write a query to retrieve only the distinct values from a column in a table.
SELECT DISTINCT JOB FROM BANK_STAFFDETAILS

SELECT DISTINCT AGE FROM BANK_STAFFDETAILS

SELECT DISTINCT MARTIAL_STATUS FROM BANK_STAFFDETAILS 

#Write a query to retrieve the number of rows in a table.

SELECT COUNT(*) FROM BANK_STAFFDETAILS 

SELECT COUNT(AGE) FROM BANK_STAFFDETAILS 

#Q2Write a query to retrieve the average value from a numeric column in a table.

SELECT AVG(BALANCE) FROM BANK_STAFFDETAILS 

SELECT AVG(AGE) FROM BANK_STAFFDETAILS 

#Q3 Write a query to retrieve the maximum value from a column in a table.
SELECT MAX(AGE) FROM BANK_STAFFDETAILS 

SELECT MAX(BALANCE) FROM BANK_STAFFDETAILS

SELECT MAX(DURATION) FROM BANK_STAFFDETAILS
 
CALL BANK() 

#Q4 Write a query to retrieve the minimum value from a column in a table.
SELECT MIN(AGE) FROM BANK_STAFFDETAILS 

SELECT MIN(BALANCE) FROM BANK_STAFFDETAILS

SELECT MIN(DURATION) FROM BANK_STAFFDETAILS
 
CALL BANK() 

#Q5 Write a query to retrieve the sum of values from a numeric column in a table.

SELECT SUM(BALANCE) FROM BANK_STAFFDETAILS

SELECT SUM(DURATION) FROM BANK_STAFFDETAILS

#Q6 Write a query to sort the result set in ascending order based on a column.

SELECT AGE FROM BANK_STAFFDETAILS
ORDER BY AGE ASC

SELECT * FROM BANK_STAFFDETAILS
ORDER BY AGE DESC

SELECT AGE,BALANCE FROM BANK_STAFFDETAILS
ORDER BY BALANCE DESC

#Q7 Write a query to retrieve the first "n" rows from a table.

CALL BANK()
SELECT * FROM BANK_STAFFDETAILS LIMIT 5

SELECT * FROM BANK_STAFFDETAILS LIMIT 2,3

#Q8 Write a query to retrieve the last "n" rows from a table.

SELECT * FROM BANK_STAFFDETAILS 
ORDER BY AGE DESC

#Q9 Write a query to filter the result set based on a specific condition using the WHERE clause.

SELECT AGE,JOB,MARTIAL_STATUS FROM BANK_STAFFDETAILS
WHERE BALANCE<100 AND MARTIAL_STATUS="dIVORCED"

CALL BANK()

SELECT BALANCE FROM BANK_STAFFDETAILS WHERE EDUCATION="TERTIARY"

SELECT BALANCE FROM BANK_STAFFDETAILS WHERE EDUCATION="SECONDARY"

SELECT SUM(BALANCE) FROM BANK_STAFFDETAILS WHERE EDUCATION="PRIMARY"

#Q10 Write a query to retrieve rows that match a specific pattern using the LIKE operator

SELECT * FROM BANK_STAFFDETAILS WHERE JOB LIKE "M%"

SELECT AGE,BALANCE FROM BANK_STAFFDETAILS WHERE JOB LIKE "M%"

SELECT AGE,BALANCE FROM BANK_STAFFDETAILS WHERE JOB LIKE "r%"

#Q11 Write a query to retrieve rows that satisfy multiple conditions using the AND operator.

CALL BANK()

SELECT * FROM BANK_STAFFDETAILS
 WHERE BALANCE > 100 AND AGE <30
 
 SELECT AGE,MARTIAL_STATUS,BALANCE FROM BANK_STAFFDETAILS
 WHERE LOAN="NO" AND EDUCATION="PRIMARY"
 
 #Q12 Write a query to retrieve rows that satisfy at least one of multiple conditions using the OR operator.
 
 CALL BANK()
 
 SELECT * FROM BANK_STAFFDETAILS
 WHERE MARTIAL_STATUS="WIDOW" OR MARTIAL_STATUS="DIVORCE" 
 
 #Q13 Write a query to retrieve rows that fall within a specific range of values using the BETWEEN operator.
 
 SELECT * FROM BANK_STAFFDETAILS
 WHERE AGE BETWEEN 25 AND 30 HAVING BALANCE> 400
 
 #Q14 Write a query to retrieve rows that match a list of specific values using the IN operator.
 
 SELECT * FROM BANK_STAFFDETAILS WHERE AGE IN(25,28,30)
 
 SELECT * FROM BANK_STAFFDETAILS WHERE JOB IN ("RETIRED","SERVICES")
 
 CALL BANK()
 
 #Q15 Write a query to retrieve rows that do not match a specific condition using the NOT operator.
 
 SELECT * FROM BANK_STAFFDETAILS WHERE NOT BALANCE > 5000;
 
 #Q16 Write a query to perform a case-insensitive search using the COLLATE operator.
 #Q17 Write a query to perform a case-sensitive search using the BINARY operator.
 
 CREATE TABLE SUB_JOIN
 (
	EMP_ID INT,
    AADHARNO INT,
    `E-NAME` VARCHAR(50),
    JOB  VARCHAR(50),
    SALARY INT,
    `DEPT-NO` INT
 )
 
 INSERT INTO SUB_JOIN
 VALUES(11,78978,"NANDU","MG",350000,58),
 (12,69668,"KIRAN","AMG",300000,26),
 (13,36998,"PRIYA","OPERATOR",260000,24),
(14,10052,"NAVEEN","IED",200000,28),
 (15,75668,"dq","DESIGN",290000,45)

CREATE TABLE SUB_JOIN1
(
	`DEPT-NO` INT,
    `D-NAME` VARCHAR(20),
    LOCATION VARCHAR (20)
)

INSERT INTO SUB_JOIN1
VALUES(58,"MAEKETING","DELHI"),
(26,"ADVA MARKETNG","AP"),
(24,"SHIPPING","KA"),
(28,"MECHANICAL","TN"),
(45,"QYUALITY","KL")

#Q18 Write a query to join two tables based on a common column using an inner join.
SELECT * FROM SUB_JOIN
SELECT SUB_JOIN.`DEPT-NO`,SUB_JOIN1.`DEPT-NO`
FROM SUB_JOIN 
INNER JOIN SUB_JOIN1
ON SUB_JOIN.`DEPT-NO`= SUB_JOIN1.`DEPT-NO`

#Q19 Write a query to retrieve rows from one table that have no matching rows in another table using a left join.
SELECT SUB_JOIN.`DEPT-NO`,SUB_JOIN1.`DEPT-NO`
FROM SUB_JOIN 
LEFT JOIN SUB_JOIN1
ON SUB_JOIN.`DEPT-NO`= SUB_JOIN1.`DEPT-NO`

#Q20 Write a query to retrieve rows from one table that have matching rows in another table using a right join.
SELECT SUB_JOIN.`DEPT-NO`,SUB_JOIN1.`DEPT-NO`
FROM SUB_JOIN 
RIGHT JOIN SUB_JOIN1
ON SUB_JOIN.`DEPT-NO`= SUB_JOIN1.`DEPT-NO`

#Q21 Write a query to retrieve rows that satisfy a condition in one table and exclude rows that satisfy another condition in a different table using a subquery.

"""QUERY SHOWING  THAT IT IS SATISFYING ONE CONDITION AND SKIPING OR AVOIDING OTHER CONDTION USING NOT IN FUNCTION"""
SELECT *
FROM SUB_JOIN
WHERE EMP_ID <12 
    AND `DEPT-NO` NOT IN (SELECT `DEPT-NO` FROM SUB_JOIN1 WHERE `DEPT-NO`>100)
    
#Q22 Write a query to retrieve rows that satisfy a condition in one table and include rows that satisfy another condition in a different table using a subquery.
SELECT *
FROM SUB_JOIN
WHERE EMP_ID <15 
    AND `DEPT-NO` IN (SELECT `DEPT-NO` FROM SUB_JOIN1 WHERE `DEPT-NO`> 10)
    
#Q23 Write a query to retrieve rows from a table and display them in groups based on a specific column using the GROUP BY clause

CALL BANK()

select martial_status, count(*) from bank_staffdetails
group by martial_status

select martial_status, sum(balance) ,count(*) from bank_staffdetails
group by martial_status

select martial_status from bank_staffdetails group by martial_status

select job from bank_staffdetails group by job

use 100_query

#############################################################
call bank()

select martial_status,avg(age) from bank_staffdetails group by martial_status

#Q24 Write a query to apply a condition on a grouped result set using the HAVING clause.

select martial_status, sum(balance) ,count(*) from bank_staffdetails 
group by martial_status
having sum(balance)>300


# Q25 Write a query to calculate the total sum, average, maximum, or minimum value for 
# a specific column in a grouped result set using aggregate functions 
# (SUM, AVG, MAX, MIN).

call bank()

select sum(balance) from bank_staffdetails

select martial_status ,count(*),avg(balance) from bank_staffdetails
group by martial_status
having martial_status ="divorced"

select martial_status ,count(*),max(balance) from bank_staffdetails
group by martial_status
having martial_status ="single"

#Q26 Write a query to retrieve rows that satisfy a condition in one table and retrieve related rows from another table using a correlated subquery.

select * from sub_join
select * from sub_join1

select * from sub_join where `e-name`="nandu" and exists 
(select * from sub_join1  where `dept-no`=58 and sub_join.`dept-no` = sub_join1.`dept-no`);


#Q27 Write a query to retrieve rows that satisfy a condition in one table 
#and retrieve related rows from multiple tables using a nested subquery.

select * from sub_join 
where job ="Clerk"
and exists ( select `d-name` from sub_join1 where `dept-no` >20 and `dept-no` <30)

select * from sub_join 
where job ="Clerk"
and exists ( select `d-name` from sub_join1 where `dept-no`< 85)

#Q28 Write a query to update values in a column for specific rows in a table using the UPDATE statement.

call bank ()
update bank_staffdetails set contact="known" where job="retired"
set sql_safe_updates = 0

#Q29 Write a query to delete specific rows from a table using the DELETE statement.

delete from bank_staffdetails where age <=25

#Q30 Write a query to insert values into a table from another table using the INSERT INTO SELECT statement.

insert into sub_join(location)
select location from sub_join1 where `dept-no`>20

#Q31 Write a query to rename a column in an existing table using the ALTER TABLE statement.
call bank()

alter table bank_staffdetails rename column y to bollean_y

#Q32 Write a query to drop a column from an existing table using the ALTER TABLE statement.

alter table bank_staffdetails
drop column bollean_y

#Q33 Write a query to create an index on a column of a table using the CREATE INDEX statement.

call bank()
create index alldetails on bank_staffdetails(poutcome)

select alldetails from bank_staffdetails

#Q34 Write a query to drop an index from a column of a table using the DROP INDEX statement.

drop index alldetails on bank_staffdetails


################################################################################################################################

                     """ADVANCE SQL QUERIES"""

#Q35 Write a query to display the list of tables in a database using the SHOW TABLES statement.

SHOW DATABASES

#Q36 Write a query to display the structure of a table using the DESC statement.

CALL BANK()

SELECT * FROM BANK_STAFFDETAILS ORDER BY AGE DESC

#Q37 Write a query to display the list of columns in a table using the SHOW COLUMNS statement.

SHOW COLUMNS FROM BANK_STAFFDETAILS


#Q38 Write a query to display the list of tables in a database using the SHOW TABLES statement.

SHOW TABLES FROM 100_QUERY

#Q39 Write a query to calculate the total count of rows in a table using the COUNT function.
CALL BANK()
SELECT  COUNT(*) FROM BANK_STAFFDETAILS
SELECT COUNT(AGE) FROM BANK_STAFFDETAILS

#Q40 Write a query to calculate the average value of a column in a table using the AVG function.
CALL BANK()
SELECT AVG(AGE) FROM BANK_STAFFDETAILS 
SELECT AVG(BALANCE) FROM BANK_STAFFDETAILS
SELECT AVG(DURATION) FROM BANK_STAFFDETAILS
SELECT AVG(DAY) FROM BANK_STAFFDETAILS

#Q41 Write a query to calculate the sum of values in a column of a table using the SUM function.
CALL BANK()
SELECT SUM(BALANCE) FROM BANK_STAFFDETAILS
SELECT SUM(DAY) FROM BANK_STAFFDETAILS

#Q42 Write a query to calculate the maximum value in a column of a table using the MAX function.
SELECT MAX(BALANCE) FROM BANK_STAFFDETAILS
SELECT MAX(BALANCE) FROM BANK_STAFFDETAILS WHERE AGE > 50

#Q43 Write a query to calculate the minimum value in a column of a table using the MIN function.

SELECT MIN(BALANCE) FROM BANK_STAFFDETAILS WHERE AGE>50

#Q44 Write a query to concatenate values from multiple columns into a single column using the CONCAT function

CALL BANK()

SELECT CONCAT(CAMPAIGN,PREVIOUS) AS SUB_DETAILS FROM BANK_STAFFDETAILS
CALL BANK()

#Q45 Write a query to convert a string value to uppercase using the UPPER function.

SELECT UPPER(JOB) FROM BANK_STAFFDETAILS

#Q46 Write a query to convert a string value to lowercase using the LOWER function.

SELECT LOWER(JOB) FROM BANK_STAFFDETAILS

#Q50 Write a query to extract a substring from a string value using the SUBSTRING function.

SELECT SUBSTRING(MARTIAL_STATUS,1,3) AS SURNANAME FROM BANK_STAFFDETAILS

#Q51 Write a query to round a numeric value to a specified number of decimal places using the ROUND function.

SELECT ROUND(BALANCE,1) AS ROUNDED_VALUE FROM BANK_STAFFDETAILS

#Q52 Write a query to generate a random number within a specified range using the RAND function

SELECT FLOOR ((RAND() * (10 - 1 + 1 )) + 10) AS RANDOM_NUMBER

#Q53 Write a query to format a date value in a specific format using the DATE_FORMAT function.

#Q54 Write a query to retrieve rows where a specific column contains a NULL value using the IS NULL operator.
SELECT * FROM BANK_STAFFDETAILS WHERE JOB IS NULL

#Q55 Write a query to retrieve rows where a specific column does not contain a NULL value using the IS NOT NULL operator.
SELECT * FROM BANK_STAFFDETAILS WHERE MARTIAL_STATUS IS NOT NULL
