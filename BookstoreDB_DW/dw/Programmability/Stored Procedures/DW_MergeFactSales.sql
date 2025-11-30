CREATE PROCEDURE [dbo].[DW_MergeFactSales]
AS
BEGIN
  UPDATE fs
              SET
              fs.order_date_key       = s.order_date_key
              ,fs.book_sk             = s.book_sk
              ,fs.customer_sk         = s.customer_sk
              ,fs.shipping_method_sk  = s.shipping_method_sk
              ,fs.dest_address_sk     = s.dest_address_sk
              ,fs.quantity            = s.quantity
              ,fs.unit_price          = s.unit_price
              ,fs.line_amount         = CAST(s.quantity * s.unit_price AS DECIMAL(10,2))
              from dbo.Fact_Sales AS fs
              join staging.sales s on (fs.OrderId = s.OrderId and fs.LineId = s.LineId)
END
GO