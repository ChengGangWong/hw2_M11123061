/****** SSMS 中 SelectTopNRows 命令的指令碼  ******/
SELECT CONVERT(NVARCHAR,(([Age]-A.Min_)/(A.Max_-A.Min_)))
      +','+W.[OneHotEncoding]
      +','+CONVERT(NVARCHAR,(([Fnlwgt]-F.Min_)/(F.Max_-F.Min_)))
      +','+CONVERT(NVARCHAR,(([EducationNum]-E.Min_)/(E.Max_-E.Min_)))
      +','+M.[OneHotEncoding]
      +','+O.[OneHotEncoding]
      +','+R.[OneHotEncoding]
      +','+CASE [Sex] WHEN 'Female' THEN '0' WHEN 'Male' THEN '1' END
      --+','+CONVERT(NVARCHAR,(([CapitalGain]-G.Min_)/(G.Max_-G.Min_)))
      --+','+CONVERT(NVARCHAR,(([CapitalLoss]-L.Min_)/(L.Max_-L.Min_)))
      +','+C.[OneHotEncoding]
      +','+CASE [Over50K] WHEN'<=50K' THEN '0' WHEN '>50K' THEN'1' END
	  +','+CONVERT(NVARCHAR,[HoursPerWeek])
  FROM [Data_Mining].[adult].[TestData] TD
  INNER JOIN [Data_Mining].[adult].[Workclass] W ON(TD.[Workclass]=W.[workclass]) 
  INNER JOIN [Data_Mining].[adult].[MaritalStatusRelationship] M ON(TD.MaritalStatus=M.MaritalStatus AND TD.Relationship=M.Relationship)
  INNER JOIN [Data_Mining].[adult].[Occupation] O ON(TD.Occupation=O.Occupation)
  INNER JOIN [Data_Mining].[adult].[Race] R ON(TD.Race=R.Race)
  INNER JOIN [Data_Mining].[adult].[country] C ON(TD.[NativeCountry]=C.country)
  ,[Data_Mining].[adult].[Age] A
  ,[Data_Mining].[adult].[fnlwgt] F
  ,[Data_Mining].[adult].[EducationMinMax] E
  ,[Data_Mining].[adult].[Gain] G 
  ,[Data_Mining].[adult].[loss] L