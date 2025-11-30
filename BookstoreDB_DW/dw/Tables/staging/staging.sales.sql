CREATE TABLE [staging].[sales]
(
	OrderId             INT             NOT NULL,
    LineId             INT             NOT NULL,
    order_date_key      INT        NOT NULL,
    dest_address_sk     INT             NOT NULL,

    customer_sk         INT             NOT NULL,
    book_sk             INT             NOT NULL,

    shipping_method_sk  INT             NOT NULL,

    quantity            INT             NOT NULL DEFAULT 1,
    unit_price          DECIMAL(5,2)    NOT NULL,

    load_datetime       DATETIME2       NOT NULL DEFAULT SYSDATETIME()
)
