Create table departamento(
   codigo_departamento int not null identity primary key,
   nombre_departamento varchar(50),
   estado bit
 );
GO

 Create table suplidor(
   codigo_suplidor int not null identity primary key,
   nombre_suplidor varchar(50),
   sexo  varchar(50),
   email varchar(50),
   telefono varchar(15),
   estado bit
 );
GO

 Create table cliente(
   codigo_cliente int not null identity primary key,
   nombre_cliente varchar(50),
   sexo varchar(50),
   email varchar(50),
   telefono varchar(15),
   estado bit
 );
GO

 Create table unidad(
   codigo_unidad int not null identity primary key,
   nombre_unidad varchar(50),
   estado bit
 );
GO

 Create table producto(
   codigo_producto int not null identity primary key,
   nombre_producto varchar(50),
   codigo_departamento int not null,
   codigo_suplidor int not null,
   cantidad_existente int,
   punto_reo int,
   codigo_unidad int not null,
   estado bit,
   precio_de_venta int
 )
GO

ALTER TABLE producto
ADD CONSTRAINT FK_producto_departamento
    FOREIGN KEY (codigo_departamento)
    REFERENCES departamento(codigo_departamento)
    ON DELETE CASCADE
    ON UPDATE CASCADE
GO

ALTER TABLE producto
ADD CONSTRAINT FK_producto_suplidor
    FOREIGN KEY (codigo_suplidor)
    REFERENCES suplidor(codigo_suplidor)
    ON DELETE CASCADE
    ON UPDATE CASCADE
GO

ALTER TABLE producto
ADD CONSTRAINT FK_producto_unidad
    FOREIGN KEY (codigo_unidad)
    REFERENCES unidad(codigo_unidad)
    ON DELETE CASCADE
    ON UPDATE CASCADE
GO

Create table venta(
   numero_factura int not null identity primary key,
   fecha date,
   codigo_cliente int not null,
   estado bit,
   total int
 );
GO

ALTER TABLE venta
ADD CONSTRAINT FK_venta_cliente
    FOREIGN KEY (codigo_cliente)
    REFERENCES cliente(codigo_cliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE
GO

Create table detalles(
   numero_factura int not null,
   cantidad_vendida int,
   codigo_producto int not null,
   precio_de_venta int);
GO

ALTER TABLE detalles
ADD CONSTRAINT FK_detalles_venta
    FOREIGN KEY (numero_factura)
    REFERENCES venta(numero_factura)
    ON DELETE CASCADE
    ON UPDATE CASCADE
GO

ALTER TABLE detalles
ADD CONSTRAINT FK_detalles_producto
    FOREIGN KEY (codigo_producto)
    REFERENCES producto(codigo_producto)
    ON DELETE CASCADE
    ON UPDATE CASCADE
GO

CREATE PROCEDURE upsertCliente
    @codigo_cliente int,
    @nombre_cliente varchar(50),
    @sexo varchar(50),
    @email varchar(50),
    @telefono varchar(50),
    @estado bit
AS
	SET IDENTITY_INSERT cliente ON
    IF NOT EXISTS (SELECT codigo_cliente FROM cliente WHERE codigo_cliente = @codigo_cliente)
        INSERT INTO cliente (codigo_cliente, nombre_cliente,sexo, email, telefono, estado) VALUES (@codigo_cliente, @nombre_cliente, @sexo, @email, @telefono, @estado)
    ELSE 
        UPDATE cliente SET nombre_cliente =  @nombre_cliente, sexo = @sexo, email =  @email, telefono =  @telefono, estado =  @estado WHERE codigo_cliente =  @codigo_cliente
    SELECT @codigo_cliente AS codigo_cliente
GO

CREATE PROCEDURE upsertProducto
   @codigo_producto int, @nombre_producto varchar(50), @codigo_departamento int, @codigo_suplidor int, @cantidad_existente int, @punto_reo int, @codigo_unidad int, @estado bit, @precio_de_venta int
AS
	SET IDENTITY_INSERT producto ON
    IF NOT EXISTS (SELECT codigo_producto FROM producto WHERE codigo_producto = @codigo_producto)
        INSERT INTO producto (codigo_producto, nombre_producto, codigo_departamento, codigo_suplidor, cantidad_existente, punto_reo, codigo_unidad, estado, precio_de_venta) VALUES (@codigo_producto, @nombre_producto, @codigo_departamento, @codigo_suplidor, @cantidad_existente, @punto_reo, @codigo_unidad, @estado, @precio_de_venta)
    ELSE 
        UPDATE producto SET nombre_producto = @nombre_producto,  codigo_departamento = @codigo_departamento,  codigo_suplidor = @codigo_suplidor,  cantidad_existente = @cantidad_existente,  punto_reo = @punto_reo,  codigo_unidad = @codigo_unidad,  estado = @estado,  precio_de_venta = @precio_de_venta  WHERE codigo_producto =  @codigo_producto
GO

CREATE PROCEDURE upsertUnidad
   @codigo_unidad int,
   @nombre_unidad varchar(50),
   @estado bit
AS
	SET IDENTITY_INSERT unidad ON
    IF NOT EXISTS (SELECT codigo_unidad FROM unidad WHERE codigo_unidad = @codigo_unidad)
        INSERT INTO unidad (codigo_unidad, nombre_unidad, estado) VALUES (@codigo_unidad, @nombre_unidad, @estado)
    ELSE 
        UPDATE unidad SET nombre_unidad = @nombre_unidad, estado = @estado WHERE codigo_unidad = @codigo_unidad
GO

CREATE PROCEDURE upsertSuplidor
    @codigo_suplidor int, @nombre_suplidor varchar(50), @sexo varchar(50), @email varchar(50), @telefono varchar(50), @estado bit
AS
	SET IDENTITY_INSERT suplidor ON
    IF NOT EXISTS (SELECT codigo_suplidor FROM suplidor WHERE codigo_suplidor = @codigo_suplidor)
        INSERT INTO suplidor (codigo_suplidor, nombre_suplidor,sexo, email, telefono, estado) VALUES (@codigo_suplidor, @nombre_suplidor,@sexo, @email, @telefono, @estado)
    ELSE 
        UPDATE suplidor SET nombre_suplidor = @nombre_suplidor, sexo = @sexo, email = @email, telefono = @telefono, estado = @estado WHERE codigo_suplidor =  @codigo_suplidor
GO

CREATE PROCEDURE upsertDepartamento
   @codigo_departamento int,
   @nombre_departamento varchar(50),
   @estado bit
AS
	SET IDENTITY_INSERT departamento ON
    IF NOT EXISTS (SELECT codigo_departamento FROM departamento WHERE codigo_departamento = @codigo_departamento)
        INSERT INTO departamento (codigo_departamento, nombre_departamento , estado) VALUES (@codigo_departamento, @nombre_departamento , @estado)
    ELSE 
        UPDATE departamento SET nombre_departamento = @nombre_departamento, estado = @estado WHERE codigo_departamento =  @codigo_departamento
GO

CREATE PROCEDURE eliminarCliente
   @codigo_cliente int
AS
    IF EXISTS (SELECT codigo_cliente FROM cliente WHERE codigo_cliente = @codigo_cliente)
        DELETE FROM cliente WHERE codigo_cliente = @codigo_cliente
GO

CREATE PROCEDURE eliminarProducto
   @codigo_producto int
AS
    IF EXISTS (SELECT codigo_producto FROM producto WHERE codigo_producto = @codigo_producto)
        DELETE FROM producto WHERE codigo_producto = @codigo_producto
GO

CREATE PROCEDURE eliminarUnidad
   @codigo_unidad int
AS
    IF EXISTS (SELECT codigo_unidad FROM unidad WHERE codigo_unidad = @codigo_unidad)
        DELETE FROM unidad WHERE codigo_unidad = @codigo_unidad
GO

CREATE PROCEDURE eliminarDepartamento
   @codigo_departamento int
AS
    IF EXISTS (SELECT codigo_departamento FROM departamento WHERE codigo_departamento = @codigo_departamento)
        DELETE FROM departamento WHERE codigo_departamento= @codigo_departamento
GO

CREATE PROCEDURE eliminarSuplidor
   @codigo_suplidor int
AS
    IF EXISTS (SELECT codigo_suplidor FROM suplidor WHERE codigo_suplidor = @codigo_suplidor)
        DELETE FROM suplidor WHERE codigo_suplidor = @codigo_suplidor
GO


CREATE PROCEDURE consultarDepartamento
@codigo_departamento int
AS
  SELECT * FROM departamento WHERE codigo_departamento = @codigo_departamento;
GO

CREATE PROCEDURE consultarSuplidor
@codigo_suplidor int
AS
  SELECT * FROM suplidor WHERE codigo_suplidor = @codigo_suplidor;
GO

CREATE PROCEDURE consultarCliente
@codigo_cliente int
AS
  SELECT * FROM cliente WHERE codigo_cliente = @codigo_cliente;
GO

CREATE PROCEDURE consultarUnidad
@codigo_unidad int
AS
  SELECT * FROM unidad WHERE codigo_unidad = @codigo_unidad;
GO

CREATE PROCEDURE consultarProducto
@codigo_producto int
AS
  SELECT * FROM producto WHERE codigo_producto = @codigo_producto;
GO

CREATE PROCEDURE consultarProductoFull
@codigo_producto int 
AS
  IF @codigo_producto IS NULL
    SELECT  producto.codigo_producto,
      producto.nombre_producto,
      departamento.codigo_departamento,
      departamento.nombre_departamento,
      suplidor.nombre_suplidor,
      producto.cantidad_existente,
      unidad.nombre_unidad,
      producto.precio_de_venta
    FROM producto
    INNER JOIN departamento
      ON producto.codigo_departamento = departamento.codigo_departamento
    INNER JOIN suplidor
      ON producto.codigo_suplidor = suplidor.codigo_suplidor
    INNER JOIN unidad
      ON producto.codigo_unidad =  unidad.codigo_unidad
  ELSE
    SELECT  producto.codigo_producto,
      producto.nombre_producto,
      departamento.codigo_departamento,
      departamento.nombre_departamento,
      suplidor.nombre_suplidor,
      producto.cantidad_existente,
      unidad.nombre_unidad,
      producto.precio_de_venta
    FROM producto
    INNER JOIN departamento
      ON producto.codigo_departamento = departamento.codigo_departamento
    INNER JOIN suplidor
      ON producto.codigo_suplidor = suplidor.codigo_suplidor
    INNER JOIN unidad
      ON producto.codigo_unidad =  unidad.codigo_unidad
    WHERE producto.codigo_producto = @codigo_producto;
GO


CREATE PROCEDURE Facturas
    @fecha_inicial DataTime,
    @fecha_final DataTime,
    @codigo_cliente int = 0,
    @order int = 1
AS
    SELECT * FROM cliente.nombre_cliente
        FROM venta 
        INNER JOIN cliente ON venta.codigo_cliente = cliente.codigo_cliente
      WHERE venta.fecha >= @fecha_inicial AND venta.fecha_final <= @fecha_final AND (@codigo_cliente = 0 OR venta.codigo_cliente = @codigo_cliente)
      ORDER BY 
       CASE WHEN order = 1 THEN numero_factura END Desc,
       CASE WHEN order = 2 THEN fecha END ASC
       CASE WHEN order = 3 THEN nombre_cliente END ASC


GO


CREATE PROCEDURE upsertVentas
@codigo_cliente int, 
@total float
AS
  INSERT INTO venta(fecha, codigo_cliente, estado, total) VALUES (GETDATE(), @codigo_cliente, 1, @total )
  SELECT TOP 1 * FROM venta ORDER BY numero_factura DESC
GO

CREATE PROCEDURE consultarVentas
@numero_factura int
AS 
  IF @numero_factura IS NULL
  SELECT venta.numero_factura, venta.fecha, venta.total, cliente.nombre_cliente, cliente.sexo, producto.nombre_producto, detalles.cantidad_vendida, detalles.precio_de_venta, venta.estado
  FROM venta
  INNER JOIN cliente
    ON venta.codigo_cliente = cliente.codigo_cliente
  INNER JOIN detalles
    ON venta.numero_factura = detalles.numero_factura
  INNER JOIN producto
    ON detalles.codigo_producto = producto.codigo_producto
  ELSE
  SELECT venta.numero_factura, venta.fecha, venta.total, cliente.nombre_cliente, cliente.sexo, producto.nombre_producto, detalles.cantidad_vendida, detalles.precio_de_venta, venta.estado
  FROM venta
  INNER JOIN cliente
    ON venta.codigo_cliente = cliente.codigo_cliente
  INNER JOIN detalles
    ON venta.numero_factura = detalles.numero_factura
  INNER JOIN producto
    ON detalles.codigo_producto = producto.codigo_producto
  WHERE venta.numero_factura = @numero_factura
GO

CREATE PROCEDURE upsertDetalles
@numero_factura int,
@codigo_producto int,
@cantidad_vendida float,
@precio_de_venta float
AS
  SET IDENTITY_INSERT detalles ON
  INSERT INTO detalles (numero_factura, cantidad_vendida, codigo_producto, precio_de_venta) VALUES (@numero_factura, @cantidad_vendida, @codigo_producto, @precio_de_venta)
  UPDATE producto SET cantidad_existente = cantidad_existente - @cantidad_vendida WHERE codigo_producto = @codigo_producto
GO