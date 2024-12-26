--Note: for Table valued function use tables of Lab-2
--Part – A
--1. Write a function to print "hello world".
CREATE OR ALTER FUNCTION FN_HELLOWORLD()
RETURNS VARCHAR(100)
AS
BEGIN
	RETURN 'HELLO WORLD'
END

SELECT DBO.FN_HELLOWORLD();
--2. Write a function which returns addition of two numbers.
CREATE OR ALTER FUNCTION FN_ADDNUMBER(@N1  INT, @N2 INT)
RETURNS INT
AS
BEGIN
	RETURN @N1+@N2
END

SELECT DBO.FN_ADDNUMBER(10,20);

--3. Write a function to check whether the given number is ODD or EVEN.
CREATE OR ALTER FUNCTION FN_CHECKNUM(@N1 INT)
RETURNS VARCHAR(20)
AS
BEGIN
	DECLARE @ANS VARCHAR(20)
	IF @N1%2=0
		SET @ANS = 'EVEN'
	ELSE
		SET @ANS = 'ODD'
	RETURN @ANS
END
SELECT DBO.FN_CHECKNUM(23)
--4. Write a function which returns a table with details of a person whose first name starts with B.
CREATE OR ALTER FUNCTION FN_SHOWDETAILS()
RETURNS TABLE
AS

	RETURN (SELECT * FROM Person WHERE FirstName LIKE 'B%')
SELECT * FROM FN_SHOWDETAILS();

--5. Write a function which returns a table with unique first names from the person table.
CREATE OR ALTER FUNCTION FN_UNIQUEFNAMES()
RETURNS TABLE
AS

	RETURN (SELECT DISTINCT FirstName FROM PERSON);

--6. Write a function to print number from 1 to N. (Using while loop)
CREATE OR ALTER FUNCTION FN_PRINTNUMBERS(@NUM INT)
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @I INT = 1
	DECLARE @ANS VARCHAR(100) = ''
	WHILE @I < @NUM
	BEGIN
		SET @ANS = @ANS + CAST(@I AS VARCHAR) + ' '
	END
	RETURN @ANS
END
--7. Write a function to find the factorial of a given integer.
CREATE OR ALTER FUNCTION FN_FINDFACTO(@NUM INT)
RETURNS INT
AS
BEGIN
	DECLARE @FACT INT = 1;
	DECLARE @I INT = 1;
	WHILE @I <= @NUM
		BEGIN
		SET @FACT = @FACT*@I
		SET @I = @I + 1
		END
	RETURN @FACT
END

SELECT DBO.FN_FINDFACTO(5);


--Part – B
--8. Write a function to compare two integers and return the comparison result. (Using Case statement)
CREATE OR ALTER FUNCTION FN_COMPARENUM(@NUM1 INT, @NUM2 INT)
RETURNS VARCHAR(200)
AS
BEGIN
	RETURN
	CASE
		WHEN @NUM1 = @NUM2 THEN 'NUMBER 1 = NUMBER 2'
		WHEN @NUM1 > @NUM2 THEN 'NUMBER 1 GREATER THAN NUMBER 2'
		ELSE 'NUMBER 2 GREATER THAN NUMBER 1'
	END
END

SELECT DBO.FN_COMPARENUM(10, 100)
--9. Write a function to print the sum of even numbers between 1 to 20.
CREATE OR ALTER FUNCTION FN_ADDNUMBERSINLIMT()
RETURNS INT
AS
BEGIN
	DECLARE @I INT = 0
	DECLARE @ANS INT = 0
	WHILE @I <= 20
	BEGIN
		SET @ANS = @ANS + @I
		SET @I = @I + 2
	END
	RETURN @ANS
END

SELECT DBO.FN_ADDNUMBERSINLIMT();

--10. Write a function that checks if a given string is a palindrome
CREATE OR ALTER FUNCTION FN_CHECKPALSTRING(@STR VARCHAR(100))
RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @RSTR VARCHAR(MAX) = REVERSE(@STR)
	 
	
END
--Part – C
--11. Write a function to check whether a given number is prime or not.
CREATE OR ALTER FUNCTION FUNNAME()
RETURNS 
AS
BEGIN
	RETURN
END
--12. Write a function which accepts two parameters start date & end date, and returns a difference in days.
CREATE OR ALTER FUNCTION FUNNAME()
RETURNS 
AS
BEGIN
	RETURN
END
--13. Write a function which accepts two parameters year & month in integer and returns total days each
--year.
CREATE OR ALTER FUNCTION FUNNAME()
RETURNS 
AS
BEGIN
	RETURN
END
--14. Write a function which accepts departmentID as a parameter & returns a detail of the persons.
CREATE OR ALTER FUNCTION FUNNAME()
RETURNS 
AS
BEGIN
	RETURN
END
--15. Write a function that returns a table with details of all persons who joined after 1-1-1991.CREATE OR ALTER FUNCTION FUNNAME()
RETURNS 
AS
BEGIN
	RETURN
END