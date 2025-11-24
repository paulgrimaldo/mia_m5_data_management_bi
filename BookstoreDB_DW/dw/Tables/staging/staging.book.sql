CREATE TABLE [staging].[book]
(
	book_id             INT             NOT NULL,
    title               NVARCHAR(255)   NOT NULL,
    isbn13              NVARCHAR(20)    NULL,
    num_pages           INT             NULL,
    publication_date    DATE            NULL,

    publisher_id        INT             NULL,
    publisher_name      NVARCHAR(255)   NULL,

    language_id         INT             NULL,
    language_code       NVARCHAR(10)    NULL,
    language_name       NVARCHAR(100)   NULL,

    load_datetime       DATETIME2       NOT NULL DEFAULT SYSDATETIME(),
    batch_id            INT             NULL
)
