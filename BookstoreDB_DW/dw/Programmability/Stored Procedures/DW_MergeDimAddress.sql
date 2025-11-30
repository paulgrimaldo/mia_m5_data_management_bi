CREATE PROCEDURE [dbo].[DW_MergeDimAddress]
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE da
    SET     
            da.city          = sa.city,
            da.country_name  = sa.country_name,
            da.street_number = sa.street_number,
            da.street_name   = sa.street_name
    FROM    dbo.DimAddress       AS da
    INNER JOIN staging.adress   AS sa
            ON da.address_sk = sa.AddressSK;
END
GO
