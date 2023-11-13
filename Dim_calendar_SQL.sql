-- Cleansed dbo.DimDate Table

--To Choose Column that I need

SELECT 
	  [DateKey],
      [FullDateAlternateKey]  AS Date,
		 --,[DayNumberOfWeek]
      [EnglishDayNameOfWeek] AS Day,
		 --,[SpanishDayNameOfWeek]
		  --,[FrenchDayNameOfWeek]
		  --,[DayNumberOfMonth]
		  --,[DayNumberOfYear]
      [WeekNumberOfYear]  AS WeekNR,
      [EnglishMonthName] AS Month,
	  LEFT([EnglishMonthName],3) AS Month_Short,
		  --,[SpanishMonthName]
		 --,[FrenchMonthName]
      [MonthNumberOfYear] AS Month_No,
      [CalendarQuarter] AS Quarter,
      [CalendarYear] AS Year
		  --,[CalendarSemester]
		  --,[FiscalQuarter]
		  --,[FiscalYear]
		  --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  -- Since only looking 2 year back in time when doing analysis of sales
  WHERE CalendarYear >= 2021

   