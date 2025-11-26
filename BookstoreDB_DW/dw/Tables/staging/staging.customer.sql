CREATE TABLE [staging].[customer]
(
	CustomerSK          INT             NOT NULL,
    first_name          NVARCHAR(100)   NOT NULL,
    last_name           NVARCHAR(100)   NOT NULL,
    email               NVARCHAR(255)   NULL,

    address_id          INT             NULL,
    address             NVARCHAR(255)   NULL,
    city                NVARCHAR(100)   NULL,
    zip_code            NVARCHAR(20)    NULL,

    country_id          INT             NULL,
    country_name        NVARCHAR(100)   NULL,

    load_datetime       DATETIME2       NOT NULL DEFAULT SYSDATETIME(),
    batch_id            INT             NULL
)
