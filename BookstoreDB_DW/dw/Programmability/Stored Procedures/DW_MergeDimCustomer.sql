CREATE PROCEDURE [dbo].[DW_MergeDimCustomer]
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dc
    SET     
            dc.first_name   = sc.first_name,
            dc.last_name    = sc.last_name,
            dc.email        = sc.email,
            dc.city         = sc.city,
            dc.country_name = sc.country_name,
            dc.street_number = sc.street_number, 
            dc.street_name  = sc.street_name,   
            dc.address_status = sc.address_status
    FROM    dbo.DimCustomer        AS dc
    INNER JOIN staging.customer    AS sc
            ON dc.customer_sk = sc.CustomerSK;
END
GO
