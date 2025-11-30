CREATE TABLE [staging].[order_status]
(
	StatusSK        INT             NOT NULL,
    status_value    VARCHAR (20)  NULL,    
    load_datetime       DATETIME2    NOT NULL DEFAULT SYSDATETIME(),
    batch_id            INT          NULL
)
