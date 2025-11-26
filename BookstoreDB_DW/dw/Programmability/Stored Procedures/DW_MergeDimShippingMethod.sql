CREATE PROCEDURE [dbo].[DW_MergeDimShippingMethod]
AS
BEGIN
	UPDATE ds
	SET	 method_name	= sm.method_name
		,base_cost		= sm.base_cost
	FROM dbo.DimShippingMethod	ds
	INNER JOIN staging.shipping_method sm ON ds.shipping_method_sk = sm.MethodSK
END
