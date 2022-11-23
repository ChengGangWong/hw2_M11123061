/****** SSMS 中 SelectTopNRows 命令的指令碼  ******/
DECLARE @MCC TABLE([Month] varchar(3),CPI FLOAT,CCI FLOAT)
INSERT INTO @MCC
SELECT DISTINCT [Month],[CPI],[CCI]
FROM [Data_Mining].[bank].[AllData]
DECLARE @MCCI TABLE([Month] varchar(3),CPI FLOAT,CCI FLOAT,IDX INT)
INSERT INTO @MCCI
SELECT [Month],CPI,CCI,ROW_NUMBER() OVER (ORDER BY [Month])
FROM @MCC
--外層迴圈
DECLARE @MIN INT=(SELECT MIN(IDX) FROM @MCCI)
DECLARE @MAX INT=(SELECT MAX(IDX) FROM @MCCI)
--內層迴圈
DECLARE @MIN_IN INT =@MIN
DECLARE @MAX_IN INT=@MAX
DECLARE @MCCT TABLE([Month] varchar(3),CPI FLOAT,CCI FLOAT,OneHotEncoding NVARCHAR(MAX))
WHILE (@MIN<=@MAX)
BEGIN
	DECLARE @Month varchar(3),@CPI FLOAT,@CCI FLOAT;
	SELECT @Month=[Month],@CPI=CPI,@CCI=CCI FROM @MCCI WHERE IDX=@MIN;
	DECLARE @OneHotEncoding NVARCHAR(MAX)='';
	SET @OneHotEncoding='';
	SET @MIN_IN=1;
	WHILE (@MIN_IN<=@MAX_IN)
	BEGIN
		IF(@OneHotEncoding<>'') 
			SELECT @OneHotEncoding=@OneHotEncoding+',';
		IF(@MIN=@MIN_IN)
			SELECT @OneHotEncoding=@OneHotEncoding+'1';
		ELSE
			SELECT @OneHotEncoding=@OneHotEncoding+'0';
		SET @MIN_IN=@MIN_IN+1;
	END
	INSERT INTO @MCCT
	VALUES(@Month,@CPI,@CCI,@OneHotEncoding)
	SET @MIN=@MIN+1;
END
INSERT INTO [Data_Mining].[bank].[Month_CPI_CCI]
SELECT * FROM @MCCT;