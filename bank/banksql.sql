/****** SSMS 中 SelectTopNRows 命令的指令碼  ******/
SELECT DISTINCT marital
  FROM [bank].[dbo].[bank-additional-full]

  UPDATE [bank].[dbo].[bank-additional-full]
  SET job=CASE job WHEN 'technician' THEN '0' WHEN 'services' THEN '1' WHEN 'housemaid' THEN '2' WHEN 'retired' THEN '3' WHEN 'blue-collar' THEN '4' 
  WHEN 'unknown' THEN '5' WHEN 'self-employed' THEN '6' WHEN 'student' THEN '7' WHEN 'unemployed' THEN '8' WHEN 'entrepreneur' THEN '9' WHEN 'admin.' THEN '10' 
  WHEN 'management' THEN '11' ELSE job END

SELECT DISTINCT marital
  FROM [bank].[dbo].[bank-additional-full]

  UPDATE [bank].[dbo].[bank-additional-full]
  SET marital=CASE marital WHEN 'single' THEN '0' WHEN 'unknown' THEN '1' WHEN 'divorced' THEN '2' WHEN 'married' THEN '3'  ELSE marital END


SELECT DISTINCT education
  FROM [bank].[dbo].[bank-additional-full]

 UPDATE [bank].[dbo].[bank-additional-full]
  SET education=CASE education WHEN 'basic.6y' THEN '0' WHEN 'basic.4y' THEN '1' WHEN 'unknown' THEN '2' WHEN 'professional.course' THEN '3' WHEN 'university.degree' THEN '4' 
  WHEN 'high.school' THEN '5' WHEN 'basic.9y' THEN '6' WHEN 'illiterate' THEN '7'  ELSE education END

SELECT DISTINCT  default
  FROM [bank].[dbo].[bank-additional-full]



SELECT DISTINCT  housing
  FROM [bank].[dbo].[bank-additional-full]

 UPDATE [bank].[dbo].[bank-additional-full]
  SET housing=CASE housing WHEN 'unknown' THEN '0' WHEN 'yes' THEN '1' WHEN 'no' THEN '2' ELSE housing END


SELECT DISTINCT  loan
  FROM [bank].[dbo].[bank-additional-full]

 UPDATE [bank].[dbo].[bank-additional-full]
  SET loan=CASE loan WHEN 'unknown' THEN '0' WHEN 'yes' THEN '1' WHEN 'no' THEN '2' ELSE loan END

SELECT DISTINCT  contact
  FROM [bank].[dbo].[bank-additional-full]

 UPDATE [bank].[dbo].[bank-additional-full]
  SET contact=CASE contact WHEN 'cellular' THEN '0' WHEN 'telephone' THEN '1' ELSE contact END

SELECT DISTINCT  month
  FROM [bank].[dbo].[bank-additional-full]

 UPDATE [bank].[dbo].[bank-additional-full]
  SET month=CASE month WHEN 'jun' THEN '0' WHEN 'jul' THEN '1' WHEN 'oct' THEN '2' WHEN 'sep' THEN '3' WHEN 'dec' THEN '4' 
  WHEN 'mar' THEN '5' WHEN 'apr' THEN '6' WHEN 'may' THEN '7' WHEN 'aug' THEN '8' WHEN 'nov' THEN '9' ELSE month END

SELECT DISTINCT  day_of_week
  FROM [bank].[dbo].[bank-additional-full]

 UPDATE [bank].[dbo].[bank-additional-full]
  SET day_of_week=CASE day_of_week WHEN 'mon' THEN '0' WHEN 'fri' THEN '1' WHEN 'thu' THEN '2' WHEN 'tue' THEN '3' WHEN 'wed' THEN '4'  ELSE day_of_week END

SELECT DISTINCT  poutcome
  FROM [bank].[dbo].[bank-additional-full]

 UPDATE [bank].[dbo].[bank-additional-full]
  SET poutcome=CASE poutcome WHEN 'success' THEN '0' WHEN 'nonexistent' THEN '1' WHEN 'failure' THEN '2'   ELSE poutcome END


SELECT DISTINCT  y
  FROM [bank].[dbo].[bank-additional-full]

 UPDATE [bank].[dbo].[bank-additional-full]
  SET y=CASE y WHEN 'yes' THEN '0' WHEN 'no' THEN '1'  ELSE y END


SELECT DISTINCT  [default]
  FROM [bank].[dbo].[bank-additional-full]

 UPDATE [bank].[dbo].[bank-additional-full]
  SET [default]=CASE [default] WHEN 'unknown' THEN '0' WHEN 'yes' THEN '1'  WHEN 'no' THEN '2'  ELSE [default] END

SELECT * FROM [bank].[dbo].[bank-additional-full]


