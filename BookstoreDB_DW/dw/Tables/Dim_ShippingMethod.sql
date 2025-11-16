CREATE TABLE [dw].[Dim_ShippingMethod] (
    [shipping_method_sk] INT             IDENTITY (1, 1) NOT NULL,
    [method_id]          INT             NOT NULL,
    [method_name]        NVARCHAR (100)  NOT NULL,
    [base_cost]          DECIMAL (10, 2) NULL,
    PRIMARY KEY CLUSTERED ([shipping_method_sk] ASC)
);

