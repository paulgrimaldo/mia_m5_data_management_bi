CREATE TABLE [dbo].[DimCustomer] (
    [customer_sk]  INT            IDENTITY (1, 1) NOT NULL,
    [customer_id]  INT            NOT NULL,
    [first_name]   VARCHAR (200)  NULL,
    [last_name]    VARCHAR (200)  NULL,
    [email]        VARCHAR (350) NULL,
    [city]         VARCHAR (100) NULL,
    [country_name] VARCHAR (200) NULL,
    [street_number] varchar(10) NULL,
    [street_name]  VARCHAR (200)  NULL,
    [address_status] varchar(30) NULL,
    PRIMARY KEY CLUSTERED ([customer_sk] ASC)
);

