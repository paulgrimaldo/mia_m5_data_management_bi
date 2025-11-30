
CREATE PROCEDURE [dbo].[GetOrderStatusChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow   BIGINT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT  [status_id],
            [status_value]
    FROM    [dbo].[order_status]
    WHERE   [rowversion] >  CONVERT(ROWVERSION, @startRow)
      AND   [rowversion] <= CONVERT(ROWVERSION, @endRow);
END
GO
