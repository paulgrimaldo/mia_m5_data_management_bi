CREATE TABLE [dbo].[DimAddress] (
    [address_sk]  INT            IDENTITY (1, 1) NOT NULL,  
    [address_id]  INT            NOT NULL,
    [city]         VARCHAR (100) NULL,
    [country_name] VARCHAR (200) NULL,
    [street_number] varchar(10) NULL,
    [street_name]  VARCHAR (200)  NULL,
    PRIMARY KEY CLUSTERED ([address_sk] ASC)
);

