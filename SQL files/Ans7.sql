-- Create a Pivot table for month and sales (provide the Year as filter to select a particular Year)

select ProductKey ,monthname(OrderDateKey),sum(SalesAmount)as total_sales
from factinternetsalesnew
group by ProductKey,OrderDateKey
union
select ProductKey ,monthname(OrderDateKey),sum(SalesAmount)as total_sales
from factinternetsales
group by ProductKey,OrderDateKey
order by (ProductKey);


