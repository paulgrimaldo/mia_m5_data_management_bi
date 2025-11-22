-- Limpieza completa (Execute SQL Task - single batch)
SET NOCOUNT ON;

-- Hijos directos primero
DELETE FROM dbo.order_line;
DELETE FROM dbo.order_history;
DELETE FROM dbo.book_author;
DELETE FROM dbo.customer_address;

-- Tablas dependientes
DELETE FROM dbo.book;
DELETE FROM dbo.cust_order;
DELETE FROM dbo.order_status;

-- Entidades principales / lookup
DELETE FROM dbo.customer;
DELETE FROM dbo.address;
DELETE FROM dbo.address_status;
DELETE FROM dbo.country;
DELETE FROM dbo.book_language;
DELETE FROM dbo.publisher;
DELETE FROM dbo.shipping_method;
DELETE FROM dbo.author;

-- Reseed tablas con IDENTITY (ajusta el valor si querés otro seed)
DBCC CHECKIDENT ('dbo.cust_order', RESEED, 0);
DBCC CHECKIDENT ('dbo.order_history', RESEED, 0);
DBCC CHECKIDENT ('dbo.order_line', RESEED, 0);

PRINT 'Delete complete';
