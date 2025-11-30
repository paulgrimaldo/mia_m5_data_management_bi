CREATE TABLE [staging].[book]
(
	BookSK              INT             NOT NULL,
    title               NVARCHAR(255)   NOT NULL,
    isbn13              VARCHAR (13)  NULL,
    num_pages           INT             NULL,
    publication_date    DATE            NULL,

    publisher_name   VARCHAR (400) NULL,
   

    language_id         INT             NULL,
    language_code    VARCHAR (8)  NULL,
    language_name    VARCHAR (50) NULL,

    load_datetime       DATETIME2       NOT NULL DEFAULT SYSDATETIME(),
    batch_id            INT             NULL
)
