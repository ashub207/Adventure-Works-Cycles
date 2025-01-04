select ProductKey ,quarter(OrderDateKey),sum(SalesAmount)as total_sales
from factinternetsalesnew
group by ProductKey,OrderDateKey
union
select ProductKey ,quarter(OrderDateKey),sum(SalesAmount)as total_sales
from factinternetsales
group by ProductKey,OrderDateKey
order by(ProductKey);