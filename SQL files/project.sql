SELECT * FROM my_project.mergedalldata;
 select OrderDateKey, Month(OrderDateKey) as Month,Day(OrderDateKey) as Day, year(OrderDateKey) as Year, week(OrderDateKey) as Week from mergedalldata;

SELECT 
    Orderdatekey,
    CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE) AS OrderDate,
   YEAR(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) AS Year,
       MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) AS Month,
           WEEk( CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) AS Week,

         /*  DATENAME(MONTH, CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) AS MonthName,*/
            DAY(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) AS Day,
   /* DATENAME(WEEKDAY, CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) AS DayName,
    DATEPART(WEEK, CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) AS Week,
 CONCAT('Week ', DATEPART(WEEK, CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE))) AS WeekName,*/

    CASE 
        WHEN MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) IN (7, 8, 9) THEN MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) - 6
        WHEN MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) IN (10, 11, 12) THEN MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) - 9
        WHEN MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) IN (1, 2, 3) THEN MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) + 3
        ELSE MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) + 3
    END AS FinancialMonth,

    CASE 
        WHEN MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) IN (7, 8, 9) THEN 'Q1'
        WHEN MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) IN (10, 11, 12) THEN 'Q2'
        WHEN MONTH(CAST(CAST(Orderdatekey AS CHAR(8)) AS DATE)) IN (1, 2, 3) THEN 'Q3'
        ELSE 'Q4'
    END AS FinancialQuarter

   
FROM mergedalldata;






