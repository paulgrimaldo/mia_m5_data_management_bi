CREATE TABLE [dbo].[Fact_Sales] (
    [order_sk]           BIGINT          IDENTITY (1, 1) NOT NULL,
    [order_date_key]     INT             NOT NULL,
    [book_sk]            INT             NOT NULL,
    [customer_sk]        INT             NOT NULL,
    [shipping_method_sk] INT             NOT NULL,
    [dest_address_sk]    INT             NOT NULL,
    [order_id]           INT             NOT NULL,
    [line_id]            INT             NOT NULL,
    [quantity]           INT             DEFAULT ((1)) NOT NULL,
    [unit_price]         DECIMAL (5, 2) NOT NULL,
    [line_amount]        DECIMAL (10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([order_sk] ASC),
    FOREIGN KEY ([book_sk]) REFERENCES [dbo].[DimBook] ([book_sk]),
    FOREIGN KEY ([customer_sk]) REFERENCES [dbo].[DimCustomer] ([customer_sk]),
    FOREIGN KEY ([order_date_key]) REFERENCES [dbo].[DimDate] ([DateKey]),
    FOREIGN KEY ([shipping_method_sk]) REFERENCES [dbo].[DimShippingMethod] ([shipping_method_sk])
);

