CREATE TABLE [staging].[customer]
(
	CustomerSK          INT             NOT NULL,
   first_name   VARCHAR (200)  NULL,
    last_name    VARCHAR (200)  NULL,
    email        VARCHAR (350) NULL,
    

    load_datetime       DATETIME2       NOT NULL DEFAULT SYSDATETIME()
)
