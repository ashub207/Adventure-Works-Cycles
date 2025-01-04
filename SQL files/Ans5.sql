-- 5.Calculate the Productioncost uning the columns(unit cost ,order quantity)product

select UnitPrice,orderquantity,(UnitPrice*orderquantity) as Productioncost
from datamerge;
