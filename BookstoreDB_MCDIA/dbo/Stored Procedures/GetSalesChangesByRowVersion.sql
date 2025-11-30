CREATE PROCEDURE [dbo].[GetSalesChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	select 
	co.[order_id]
	,OrderDateKey = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,co.[order_date]))
						  + CASE 
								WHEN DATEPART(MONTH,co.[order_date]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,co.[order_date]))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,co.[order_date]))
							END
						  + CASE 
								WHEN DATEPART(DAY,co.[order_date]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,co.[order_date]))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,co.[order_date]))
							END))
	,co.[customer_id]
	,co.[shipping_method_id]
	,co.[dest_address_id]
	,ol.[book_id]
	,ol.[line_id]
	,ol.[price]
	,1 as quantity
	,ol.[price] * 1 as line_amount
  FROM [dbo].[cust_order] co
  JOIN [dbo].[order_line] ol on (co.order_id = ol.order_id)
  WHERE (co.[rowversion] > CONVERT(ROWVERSION,@startRow) AND co.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR (ol.[rowversion] > CONVERT(ROWVERSION,@startRow) AND ol.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END