SELECT CONVERT(NVARCHAR(MAX),((CONVERT(FLOAT,[Age])-A.[Min_])/(A.[Max_]-A.[Min_])))+ ','+
      J.[OneHotEncoding] + ','+
      M.[OneHotEncoding]+ ','+
      E.[OneHotEncoding]+ ','+
      C.[OneHotEncoding]+ ','+
      MO.[OneHotEncoding]+ ','+
      L.[OneHotEncoding]+ ','+
      CO.[Type]+ ','+
      MCC.[OneHotEncoding]+ ','+
      D.[OneHotEncoding] + ','+
      CONVERT(NVARCHAR(MAX),((CONVERT(FLOAT,[Duration])-DU.[Min_])/(DU.[Max_]-DU.[Min_])))+ ','+
      CONVERT(NVARCHAR(MAX),((CONVERT(FLOAT,[Campaign])-CA.[Min_])/(CA.[Max_]-CA.[Min_])))+ ','+
      P.[OneHotEncoding] + ','+
      CONVERT(NVARCHAR(MAX),((CONVERT(FLOAT,[Previous])-PR.[Min_])/(PR.[Max_]-PR.[Min_])))+ ','+
      PO.[OneHotEncoding]+ ','+
      CONVERT(NVARCHAR(MAX),((CONVERT(FLOAT,[EVR])-EV.[Min_])/(EV.[Max_]-EV.[Min_])))+ ','+
      
      CONVERT(NVARCHAR(MAX),((CONVERT(FLOAT,[NE])-NE.[Min_])/(NE.[Max_]-NE.[Min_])))+ ','+
      CASE [Subscription] WHEN'no' THEN '0' WHEN 'yes' THEN '1' END+ ','+
	  convert(varchar,(convert(float,[E3])*1000))
  FROM [Data_Mining].[bank].[AllData] AD 
  INNER JOIN [Data_Mining].[bank].[Job] J ON(AD.Job =J.JOB)
  INNER JOIN [Data_Mining].[bank].[Marital] M ON(AD.Marital=M.Marital)
  INNER JOIN [Data_Mining].[bank].[Education] E ON(AD.[Education]=E.[Education])
  INNER JOIN [Data_Mining].[bank].[NoUnknowYes] C ON(AD.[Creditviolation]=C.NUY)
  INNER JOIN [Data_Mining].[bank].[NoUnknowYes] MO ON(AD.[Mortgage]=MO.NUY)
  INNER JOIN [Data_Mining].[bank].[NoUnknowYes] L ON(AD.[Loan]=L.NUY)
  INNER JOIN [Data_Mining].[bank].[Contact] CO ON(AD.[Contact]=CO.[Contact])
  INNER JOIN [Data_Mining].[bank].[DOW] D ON(AD.[DOW]=D.[DOW])
  INNER JOIN [Data_Mining].[bank].[Pdays] P ON(AD.[Pdays]=P.[Pdays])
  INNER JOIN [Data_Mining].[bank].[Poutcome] PO ON(AD.[Poutcome]=PO.[Poutcome])
  INNER JOIN [Data_Mining].[bank].[Month_CPI_CCI] MCC ON(AD.[Month]=MCC.[Month] AND AD.[CPI]=MCC.[CPI] AND AD.[CCI]=MCC.[CCI])
  ,[Data_Mining].[bank].[Age] A 
  ,[Data_Mining].[bank].[Duration] DU 
  ,[Data_Mining].[bank].[Campaign] CA
  ,[Data_Mining].[bank].[Previous] PR
  ,[Data_Mining].[bank].[EVR] EV
  ,[Data_Mining].[bank].[E3] E3
  ,[Data_Mining].[bank].[NE] NE

 