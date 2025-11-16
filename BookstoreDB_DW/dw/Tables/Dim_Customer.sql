CREATE TABLE [dw].[Dim_Customer] (
    [customer_sk]  INT            IDENTITY (1, 1) NOT NULL,
    [customer_id]  INT            NOT NULL,
    [full_name]    NVARCHAR (255) NOT NULL,
    [first_name]   NVARCHAR (100) NOT NULL,
    [last_name]    NVARCHAR (100) NOT NULL,
    [email]        NVARCHAR (255) NULL,
    [city]         NVARCHAR (100) NULL,
    [country_name] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([customer_sk] ASC)
);

