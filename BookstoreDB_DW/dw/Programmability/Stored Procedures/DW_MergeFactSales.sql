CREATE PROCEDURE [dbo].[DW_MergeFactSales]
AS
BEGIN
    SET NOCOUNT ON;

    MERGE dbo.Fact_Sales AS fs
    USING staging.sales AS s
        ON  fs.order_sk = s.OrderSK
        AND fs.line_id  = s.line_id

    WHEN MATCHED THEN
        UPDATE SET
              fs.order_date_key      = s.order_date_key,
              fs.book_sk             = s.book_sk,
              fs.customer_sk         = s.customer_sk,
              fs.shipping_method_sk  = s.shipping_method_sk,
              fs.dest_address_sk     = s.dest_address_sk,
              fs.quantity            = s.quantity,
              fs.unit_price          = s.unit_price,
              fs.line_amount         = CAST(s.quantity * s.unit_price AS DECIMAL(10,2))

    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
              order_sk,
              order_date_key,
              book_sk,
              customer_sk,
              shipping_method_sk,
              dest_address_sk,
              order_id,        
              line_id,
              quantity,
              unit_price,
              line_amount
        )
        VALUES (
              s.OrderSK,
              s.order_date_key,
              s.book_sk,
              s.customer_sk,
              s.shipping_method_sk,
              s.dest_address_sk,
              s.OrderSK, 
              s.line_id,
              s.quantity,
              s.unit_price,
              CAST(s.quantity * s.unit_price AS DECIMAL(10,2))
        );
END
GO