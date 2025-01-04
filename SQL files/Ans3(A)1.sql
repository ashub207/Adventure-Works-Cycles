   -- A.Year
   select 
   extract(year from ï»¿DateKey) as year
   from date;
   
  -- B.Monthno
   select 
   extract(month from ï»¿DateKey) as monthno
   from date;
   
--  C.Monthfullname
select MONTHNAME(ï»¿DateKey)from date;

 -- D Quarter(Q1,Q2,Q3,Q4)
   select 
   extract(quarter from ï»¿DateKey) as Quater
   from date;
   
   -- e.YearMonth ( YYYY-MMM)
   
    select date_format(ï»¿DateKey,"%Y,%M" )as yearmonth from date;
    
    -- F. Weekdayno
    
     SELECT dayofweek(ï»¿DateKey) AS WeekdayName from date ;
     
   
     -- G.Weekdayname
   SELECT dayname(ï»¿DateKey)AS WeekdayName from date ;
   

   
   
   
   