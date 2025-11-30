CREATE PROCEDURE [dbo].[GetCustomerChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	select [customer_id]
      ,[first_name]
      ,[last_name]
      ,[email]
	  
  FROM [dbo].[customer] 
 
  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
 
END



-- BOOK
SET ANSI_NULLS ON
