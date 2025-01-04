select s.ï»¿SalesTerritoryKey,p.EnglishProductName
from product p inner join salesterritory s
on p.ï»¿ProductKey = s.ï»¿SalesTerritoryKey;