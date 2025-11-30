CREATE TABLE [staging].[adress]
(
	AddressSK          INT             NOT NULL,
  
    city         VARCHAR (100) NULL,
    country_name VARCHAR (200) NULL,
    street_number varchar(10) NULL,
    street_name  VARCHAR (200)  NULL,

    load_datetime       DATETIME2       NOT NULL DEFAULT SYSDATETIME()
)
