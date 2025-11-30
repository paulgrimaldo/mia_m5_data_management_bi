CREATE TABLE [dbo].[DimBook] (
    [book_sk]          INT            IDENTITY (1, 1) NOT NULL,
    [book_id]          INT            NOT NULL,
    [title]            VARCHAR (400) NULL,
    [isbn13]           VARCHAR (13)  NULL,
    [num_pages]        INT            NULL,
    [publication_date] DATE           NULL,
    [publisher_name]   VARCHAR (400) NULL,
    [language_code]    VARCHAR (8)  NULL,
    [language_name]    VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([book_sk] ASC)
);

