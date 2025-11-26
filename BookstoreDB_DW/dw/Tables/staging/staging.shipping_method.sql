CREATE TABLE [staging].[shipping_method]
(
    MethodSK            INT             NOT NULL,
    method_name         VARCHAR(100)   NOT NULL,
    base_cost           DECIMAL(10,2)   NULL,

    load_datetime       DATETIME2       NOT NULL DEFAULT SYSDATETIME(),
    batch_id            INT             NULL
)
