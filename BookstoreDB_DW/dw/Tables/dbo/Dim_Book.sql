CREATE TABLE [dbo].[DimBook] (
    [book_sk]          INT            IDENTITY (1, 1) NOT NULL,
    [book_id]          INT            NOT NULL,
    [title]            NVARCHAR (255) NOT NULL,
    [isbn13]           NVARCHAR (20)  NULL,
    [num_pages]        INT            NULL,
    [publication_date] DATE           NULL,
    [publisher_name]   NVARCHAR (255) NULL,
    [language_code]    NVARCHAR (10)  NULL,
    [language_name]    NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([book_sk] ASC)
);

