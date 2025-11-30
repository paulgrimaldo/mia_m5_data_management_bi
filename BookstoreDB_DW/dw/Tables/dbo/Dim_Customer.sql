CREATE TABLE [dbo].[DimCustomer] (
    [customer_sk]  INT            IDENTITY (1, 1) NOT NULL,
    [customer_id]  INT            NOT NULL,
    [first_name]   VARCHAR (200)  NULL,
    [last_name]    VARCHAR (200)  NULL,
    [email]        VARCHAR (350) NULL,
   
    PRIMARY KEY CLUSTERED ([customer_sk] ASC)
);

