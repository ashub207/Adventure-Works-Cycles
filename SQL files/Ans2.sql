select c.FullName,f.UnitPrice
from dimcustomers c inner join factinternetsales f
on c.CustomerKey = f.CustomerKey;






select * from dimcustomers;