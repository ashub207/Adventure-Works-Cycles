-- 6.Calculate the profit

-- Profit= revenue-cost

select TotalProductCost,SalesAmount,(SalesAmount-TotalProductCost) as Profit
from merge;