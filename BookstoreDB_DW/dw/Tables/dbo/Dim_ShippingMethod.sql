CREATE TABLE [dbo].[DimShippingMethod] (
    [shipping_method_sk] INT             IDENTITY (1, 1) NOT NULL,
    [method_id]          INT             NOT NULL,
    [method_name]        VARCHAR (100)   NULL,
    [base_cost]          DECIMAL (6, 2) NULL,
    PRIMARY KEY CLUSTERED ([shipping_method_sk] ASC)
);

