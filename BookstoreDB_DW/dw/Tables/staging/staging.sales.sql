CREATE TABLE [staging].[sales]
(
	order_id            INT             NOT NULL,
    line_id             INT             NOT NULL,
    order_date          DATETIME        NOT NULL,

    customer_id         INT             NOT NULL,
    book_id             INT             NOT NULL,

    shipping_method_id  INT             NOT NULL,
    shipping_method_name NVARCHAR(100)  NULL,
    shipping_cost       DECIMAL(10,2)   NULL,

    status_id           INT             NULL,
    status_value        NVARCHAR(50)    NULL,

    quantity            INT             NOT NULL DEFAULT 1,
    unit_price          DECIMAL(10,2)   NOT NULL,

    load_datetime       DATETIME2       NOT NULL DEFAULT SYSDATETIME(),
    batch_id            INT             NULL
)
