/****** SSMS 中 SelectTopNRows 命令的指令碼  ******/
SELECT CONVERT(NVARCHAR,((CONVERT(FLOAT,[age])-A.Min_)/(A.Max_-A.Min_)))+','+
      W.OneHotEncoding+','+
      CONVERT(NVARCHAR,((CONVERT(FLOAT,[fnlwgt])-F.Min_)/(F.Max_-F.Min_)))+','+
      E.OneHotEncoding+','+
      M.OneHotEncoding+','+
      O.OneHotEncoding+','+
      R.OneHotEncoding+','+
      RA.OneHotEncoding+','+
      CASE [sex] WHEN 'Female' THEN '0' WHEN 'Male' THEN '1' END+','+
      CONVERT(NVARCHAR,((CONVERT(FLOAT,[capital-gain])-G.Min_)/(G.Max_-G.Min_)))+','+
      CONVERT(NVARCHAR,((CONVERT(FLOAT,[capital-loss])-L.Min_)/(L.Max_-L.Min_)))+','+
      C.OneHotEncoding+','+
      CASE [over50K] WHEN '<=50K.' THEN '0' WHEN '>50K.' THEN '1' END+','+
	  [hours-per-week]
  FROM [Data_Mining].[adult].[TestNormalize] DN
  INNER JOIN [Data_Mining].[adult].[Workclass]  W ON(DN.workclass=W.workclass)
  INNER JOIN [Data_Mining].[adult].[Marital]  M ON(DN.[marital-status]=M.[Marital])
  INNER JOIN [Data_Mining].[adult].[Occupation]  O ON(DN.[occupation]=O.[Occupation])
  INNER JOIN [Data_Mining].[adult].[Relationship]  R ON(DN.[relationship]=R.[Relationship])
  INNER JOIN [Data_Mining].[adult].[Race]  RA ON(DN.[race]=RA.[Race])
  INNER JOIN [Data_Mining].[adult].[country] C ON(DN.[native-country]=C.[country])
  INNER JOIN [Data_Mining].[adult].[education]E ON(DN.[education-num]=E.[Education])
  ,[Data_Mining].[adult].[Age] A
  ,[Data_Mining].[adult].[fnlwgt] F
  ,[Data_Mining].[adult].[Gain] G
  ,[Data_Mining].[adult].[loss]L