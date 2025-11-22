/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

-------------------------------------------
-- 1. LIMPIEZA (opcional)
-------------------------------------------
:r .\clean.sql

-------------------------------------------
-- 2. TABLAS LOOKUP / ATÓMICAS
-------------------------------------------
:r .\country.data.sql
:r .\addressStatus.data.sql
:r .\autor.data.sql
:r .\bookLanguage.data.sql
:r .\publisher.data.sql
:r .\orderStatus.data.sql
:r .\shippingMethod.data.sql


-------------------------------------------
-- 3. TABLAS DEPENDIENTES DIRECTAS
-------------------------------------------
:r .\address.data.sql
:r .\customer.data.sql
:r .\book.data.sql


-------------------------------------------
-- 4. TABLAS RELACIONALES / INTERMEDIAS
-------------------------------------------
:r .\bookAuthor.data.sql
:r .\customerAddress.data.sql


-------------------------------------------
-- 5. TABLAS DE OPERACIONES / TRANSACCIONALES
-------------------------------------------
:r .\custOrders.data.sql
:r .\orderHistory.data.sql
:r .\orderLine.data.sql


-------------------------------------------
-- FIN DEL POBLADO
-------------------------------------------
PRINT 'Post-deployment data load completed successfully.';