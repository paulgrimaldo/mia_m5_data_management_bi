CREATE PROCEDURE [dbo].[DW_MergeDimOrderStatus]
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dos
    SET     dos.status_value = so.status_value
    FROM    dbo.DimOrderStatus      AS dos
    INNER JOIN staging.order_status AS so
            ON dos.order_status_sk = so.StatusSK;
END
GO
