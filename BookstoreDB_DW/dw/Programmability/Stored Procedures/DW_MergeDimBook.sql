CREATE PROCEDURE [dbo].[DW_MergeDimBook]
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE db
    SET     
            db.title            = sb.title,
            db.isbn13           = sb.isbn13,
            db.num_pages        = sb.num_pages,
            db.publication_date = sb.publication_date,
            db.publisher_name   = sb.publisher_name,
            db.language_code    = sb.language_code,
            db.language_name    = sb.language_name,
            db.author_name      = sb.author_name
    FROM    dbo.DimBook      AS db
    INNER JOIN staging.book  AS sb
            ON db.book_sk = sb.BookSK;
END
GO
