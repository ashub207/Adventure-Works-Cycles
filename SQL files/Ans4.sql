-- .Calculate the Sales amount uning the columns(unit price,order quantity,unit discount)

-- Sales Amount=Unit Price×Order Quantity×(1−Unit Discount)
-- Sales Amount=(Unit Price×Order Quantity)−Discount Amount

SELECT 
    unitprice, 
    orderquantity, 
    DiscountAmount,
    (unitprice * orderquantity *  (1- DiscountAmount) )AS sales_amount
FROM 
    factinternetsalesnew;
    
    SELECT 
    unitprice, 
    orderquantity, 
    DiscountAmount,
    (unitprice * orderquantity ) - DiscountAmount AS sales_amount
FROM 
    factinternetsalesnew;