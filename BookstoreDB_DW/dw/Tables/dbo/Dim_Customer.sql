CREATE TABLE [dbo].[DimCustomer] (
    [customer_sk]  INT            IDENTITY (1, 1) NOT NULL,
    [customer_id]  INT            NOT NULL,
    [full_name]    VARCHAR (255) NOT NULL,
    [first_name]   VARCHAR (100) NOT NULL,
    [last_name]    VARCHAR (100) NOT NULL,
    [email]        VARCHAR (255) NULL,
    [city]         VARCHAR (100) NULL,
    [country_name] VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([customer_sk] ASC)
);

