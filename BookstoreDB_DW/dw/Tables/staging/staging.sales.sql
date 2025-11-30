CREATE TABLE [staging].[sales]
(
	OrderSK             INT             NOT NULL,
    line_id            INT             NOT NULL,
    order_date          DATETIME        NOT NULL,

    customer_id         INT             NOT NULL,
    book_id             INT             NOT NULL,

    shipping_method_id  INT             NOT NULL,

    status_value        NVARCHAR(50)    NULL,

    quantity            INT             NOT NULL DEFAULT 1,
    unit_price          DECIMAL(5,2)   NOT NULL,

    load_datetime       DATETIME2       NOT NULL DEFAULT SYSDATETIME()
)
