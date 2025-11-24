CREATE TABLE [dbo].[DimOrderStatus] (
    [order_status_sk] INT           IDENTITY (1, 1) NOT NULL,
    [status_id]       INT           NOT NULL,
    [status_value]    NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([order_status_sk] ASC)
);

