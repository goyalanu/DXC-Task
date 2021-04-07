/*  IF OBJECT_ID('SchemaName.EMPLOYEES', 'U') IS NOT NULL
DROP TABLE employee
GO
CREATE TABLE employees
(
    EMPLOYEESId INT NOT NULL PRIMARY KEY, -- primary key column
    column_id VARCHAR(50) NOT NULL,
    empName VARCHAR(50) NOT NULL,
    designation CHAR(50),
    department CHAR(50),
    dateOfJoining date,
    salary NUMERIC(20)
); */
/* GO
INSERT INTO employees
([EMPLOYEESId],[column_id],[empName], [DESIGNATION], [DEPARTMENT], [dateOfJoining], [salary])
VALUES
( 100, 'AG-1', 'TOM',       'ANALYST',           'CUSTOMER',  '2002-02-02', 25000),
( 102, 'AG-2', 'VALLEY',    'CONSULTANT',        'PR',        '2005-06-24', 10000),
( 103, 'AG-3', 'TIMMY',     'SOFTWARE ENGINEER', 'TECHNICAL', '2009-05-6',  15000),
( 104, 'AG-4', 'GEENA',     'SOFTWARE ENGINEER', 'TECHNICAL', '2020-01-10', 20000),
( 105, 'AG-5', 'HANNA',     'PRODUCT MANAGER',   'TECHNICAL', '2003-05-6',  23000),
( 106, 'AG-6', 'ALAN',      'HR',                'TECHNICAL', '2009-10-6',  25000),
( 107, 'AG-7', 'BRIANNE',   'TESTING',           'TECHNICAL', '2015-01-6',  6000),
( 108, 'AG-8', 'CASEY',     'ANALYST MANAGER',   'TECHNICAL', '2020-01-10', 2900),
( 109, 'AG-9', 'ANGELA',    'THEOLOGICAL',       'TECHNICAL', '2009-05-6',  5600),
( 110,'AG-10','CATHERINE',  'CONSULTANT',        'TECHNICAL', '2020-05-6',  99000),
( 111,'AG-11','Romma',      'CONSULTANT',        'TECHNICAL', '2020-05-6',  99000)

GO  */ 
-- 1) SELECT COUNT(*) FROM employees 
-- 2) SELECT COUNT(*) FROM employees WHERE DEPARTMENT = 'TECHNICAL'
-- 3) SELECT COUNT(*) FROM employees WHERE empName LIKE 'A%' OR DEPARTMENT = 'TECHNICAL' 
-- 4) SELECT COUNT(empName) FROM employee WHERE empName LIKE 'R%'
-- 5) SELECT SUM(salary) FROM employees  ;
-- 6) SELECT SUM(salary) FROM employees WHERE DEPARTMENT = 'TECHNICAL' ;
-- Create a new database called 'DEPT'
-- Connect to the 'master' database to run this snippet
/* USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'DEPT'
)
CREATE DATABASE DEPT
GO */
-- Create a new table called 'DEPT' in schema 'DXC'
-- Drop the table if it already exists
/* IF OBJECT_ID('DXC.DEPT', 'U') IS NOT NULL
DROP TABLE DEPT
GO
-- Create the table in the specified schema
CREATE TABLE DEPT
(
    DEPTId INT NOT NULL PRIMARY KEY, -- primary key column
    DEPARTMENT VARCHAR(50) NOT NULL,
    LOC VARCHAR(50) NOT NULL,
    NAM CHAR(50)
    -- specify more columns here
);
GO */
-- Insert rows into table 'DEPT'
-- 7) INSERT INTO dbo.DEPT([DEPTID], [DEPARTMENT], [LOC], [NAM]) 
-- 8) VALUES( 101, '10', 'FINANCE', 'BOSTON'),( 102, '20', 'MARKETING', 'VEGAS'),( 103, '30', 'IT', 'WASHINGTON')

-- 9) SELECT COUNT(*) FROM DEPT where DEPARTMENT = 'FINANCE' 
-- 10) SELECT COUNT(*) FROM DEPT WHERE DEPARTMENT = 'VEGAS';
 -- Add a new column 'salary' to table 'DEPT' in schema 'dbo'
 /* ALTER TABLE dbo.DEPT
     ADD salary  int  NULL 
 GO
 UPDATE DEPT
 SET
     [salary] = 35000
 WHERE 	NAM = 'WASHINGTON'
 GO */
 -- 11) SELECT * FROM DEPT WHERE DEPARTMENT = 'IT' AND salary >25000 ;
-- 12) SELECT * FROM DEPT WHERE DEPARTMENT = 'FINANCE' AND DEPARTMENT = 'WASHINGTON'
/* SELECT * FROM DEPT W, DEPT M WHERE W.DEPTID = M.DEPTID AND W.HIRE_DATE < M.HIRE_DATE */
-- Add a new column 'HIRE_DATE' to table 'DEPT' in schema 'DBO'
-- Update rows in table 'DEPT'
-- Drop 'HIRE_DATE' from table 'TableNam' in schema 'SchemaName'
-- Add a new column 'HIRE_DATE' to table 'DEPT' in schema 'dbo'
/* ALTER TABLE dbo.DEPT
    ADD HIRE_DATE  DATE 
GO */
-- Update rows in table 'DEPT'

-- 13) SELECT * from DEPT W, DEPT M WHERE W.DEPARTMENT = M.DEPARTMENT AND W.HIRE_DATE < M.HIRE_DATE
-- 14)
/* SELECT EMPLOYEESId, A.column_id AS 'EMP_ID', empName AS 'NAME', designation AS 'DESIGNATION' 
FROM employees A
INNER JOIN DEPT B
ON A.EMPLOYEESId = B.DEPTId */
-- 15)
SELECT EMPLOYEESId, A.column_id AS 'EMP_ID', empName AS 'NAME', designation AS 'DESIGNATION' 
FROM employees A
FULL OUTER JOIN DEPT B
ON A.EMPLOYEESId = B.DEPTId 
