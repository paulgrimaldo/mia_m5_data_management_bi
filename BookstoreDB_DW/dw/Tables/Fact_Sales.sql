CREATE TABLE [dw].[Fact_Sales] (
    [sales_sk]           BIGINT          IDENTITY (1, 1) NOT NULL,
    [date_key]           INT             NOT NULL,
    [book_sk]            INT             NOT NULL,
    [customer_sk]        INT             NOT NULL,
    [shipping_method_sk] INT             NOT NULL,
    [order_status_sk]    INT             NULL,
    [order_id]           INT             NOT NULL,
    [line_id]            INT             NOT NULL,
    [quantity]           INT             DEFAULT ((1)) NOT NULL,
    [unit_price]         DECIMAL (10, 2) NOT NULL,
    [line_amount]        AS              ([quantity]*[unit_price]) PERSISTED,
    PRIMARY KEY CLUSTERED ([sales_sk] ASC),
    FOREIGN KEY ([book_sk]) REFERENCES [dw].[Dim_Book] ([book_sk]),
    FOREIGN KEY ([customer_sk]) REFERENCES [dw].[Dim_Customer] ([customer_sk]),
    FOREIGN KEY ([date_key]) REFERENCES [dw].[Dim_Date] ([date_key]),
    FOREIGN KEY ([order_status_sk]) REFERENCES [dw].[Dim_OrderStatus] ([order_status_sk]),
    FOREIGN KEY ([shipping_method_sk]) REFERENCES [dw].[Dim_ShippingMethod] ([shipping_method_sk])
);

