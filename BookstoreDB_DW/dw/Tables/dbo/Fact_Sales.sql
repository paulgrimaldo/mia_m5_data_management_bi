CREATE TABLE [dbo].[Fact_Sales] (
    [sales_sk]           BIGINT          IDENTITY (1, 1) NOT NULL,
    [date_key]           INT             NOT NULL,
    [book_sk]            INT             NOT NULL,
    [customer_sk]        INT             NOT NULL,
    [shipping_method_sk] INT             NOT NULL,
    [order_status_sk]    INT             NULL,
    [order_id]           INT             NOT NULL,
    [line_id]            INT             NOT NULL,
    [quantity]           INT             DEFAULT ((1)) NOT NULL,
    [unit_price]         DECIMAL (5, 2) NOT NULL,
    [line_amount]        DECIMAL (10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([sales_sk] ASC),
    FOREIGN KEY ([book_sk]) REFERENCES [dbo].[DimBook] ([book_sk]),
    FOREIGN KEY ([customer_sk]) REFERENCES [dbo].[DimCustomer] ([customer_sk]),
    FOREIGN KEY ([date_key]) REFERENCES [dbo].[DimDate] ([DateKey]),
    FOREIGN KEY ([order_status_sk]) REFERENCES [dbo].[DimOrderStatus] ([order_status_sk]),
    FOREIGN KEY ([shipping_method_sk]) REFERENCES [dbo].[DimShippingMethod] ([shipping_method_sk])
);

