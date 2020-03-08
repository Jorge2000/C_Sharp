Create table departamento(
   codigo_departamento int not null identity primary key,
   nombre_departamento varchar(50),
   estado bit
 );
 
 Create table suplidor(
   codigo_suplidor int not null identity primary key,
   nombre_suplidor varchar(50),
   email varchar(50),
   telefono varchar(13),
   estado bit
 );
 
 Create table cliente(
   codigo_cliente int not null identity primary key,
   nombre_cliente varchar(50),
   email varchar(50),
   telefono varchar(13),
   estado bit
 );
 
 Create table unidad(
   codigo_unidad int not null identity primary key,
   nombre_unidad varchar(50),
   estado bit
 );
 
 Create table producto(
   codigo_producto int not null identity primary key,
   nombre_producto varchar(50),
   codigo_departamento int not null foreign key references departamento(codigo_departamento),
   codigo_suplidor int not null foreign key references suplidor(codigo_suplidor),
   cantidad_existente int,
   punto_reo int,
   codigo_unidad int not null foreign key references unidad(codigo_unidad),
   estado bit,
   precio_de_venta int
 );
 
 Create table detalles(
   numero_factura int not null identity primary key,
   cantidad_vendida int,
   codigo_producto int not null foreign key references producto(codigo_producto),
   precio_de_venta int
 );
 
 Create table venta(
   numero_factura int not null identity primary key,
   fecha date,
   codigo_cliente int not null foreign key references cliente(codigo_cliente),
   estado bit
 );
 
 
 
 CREATE PROCEDURE upsert_departameno
	@codigo_departamento int,
	@nombre_departamento varchar(50),
	@estado bit
AS
	IF @codigo_departamento = 0
	BEGIN 
		SELECT @codigo_departamento.MAX(codigo_departamento)
		FROM departamento
		IF @codigo_departamento IS NULL SET @codigo_departamento = 0
		SET @codigo_departamento = @codigo_departamento + 1
	END
	IF NOT EXISTS(SELECT codigo_departamento FROM departamento WHERE codigo_departamento = @codigo_departamento)
	   INSERT INTO departamento (codigo_departamento, nombre_departamento, estado) VALUES (@codigo_departamento, @nombre_departamento, @estado)
	ELSE 
		UPDATE departamento SET nombre_departamento = @nombre_departamento, estado = @estado WHERE codigo_departamento = @codigo_departamento
	SELECT @codigo_departamento AS codigo_departamento




CREATE PROCEDURE upsert_cliente
    @codigo_cliente int,
    @nombre_cliente varchar(50),
    @email varchar(50),
    @telefono varchar(13),
    @estado bit
AS
    IF NOT EXISTS (SELECT codigo_cliente FROM cliente WHERE codigo_cliente = @codigo_cliente)
        INSERT INTO cliente (codigo_cliente, nombre_departamento, email, telefono, estado) VALUES (@codigo_cliente, @nombre_cliente, @email, @telefono, @estado)
    ELSE 
        UPDATE nombre_cliente =  @nombre_cliente, email =  @email, telefono =  @telefono, estado =  @estado WHERE codigo_cliente =  @codigo_cliente
    SELECT @codigo_cliente AS codigo_cliente    

CREATE PROCEDURE upsert_producto
   @codigo_producto int
   @nombre_producto varchar(50)
   @codigo_departamento int
   @codigo_suplidor int
   @cantidad_existente int
   @punto_reo int
   @codigo_unidad int
   @estado bit
   @precio_de_venta int
AS
    IF NOT EXISTS (SELECT codigo_producto FROM cliente WHERE codigo_producto = @codigo_producto)
        INSERT INTO departamento (codigo_producto, nombre_producto, codigo_departamento, codigo_suplidor, cantidad_existente, punto_reo, codigo_unidad, estado, precio_de_venta) VALUES (@codigo_producto, @nombre_producto, @codigo_departamento, @codigo_suplidor, @cantidad_existente, @punto_reo, @codigo_unidad, @estado, @precio_de_venta)
    ELSE 
        UPDATE @nombre_producto = nombre_producto, @codigo_departamento = codigo_departamento, @codigo_suplidor = codigo_suplidor, @cantidad_existente = cantidad_existente, @punto_reo = punto_reo, @codigo_unidad = codigo_unidad, @estado = estado, @precio_de_venta = precio_de_venta WHERE codigo_producto =  @codigo_producto

CREATE PROCEDURE upsert_unidad
   @codigo_unidad int
   @nombre_producto varchar(50)
   @estado bit
AS
    IF NOT EXISTS (SELECT codigo_unidad FROM cliente WHERE codigo_unidad = @codigo_unidad)
        INSERT INTO producto (codigo_unidad, nombre_producto, estado) VALUES (@codigo_unidad, @nombre_producto, @estado)
    ELSE 
        UPDATE nombre_producto = @nombre_producto, estado = @estado WHERE codigo_unidad =  @codigo_unidad WHERE codigo_unidad = @codigo_unidad

CREATE PROCEDURE upsert_suplidor
    @codigo_suplidor int,
    @nombre_cliente varchar(50),
    @email varchar(50),
    @telefono varchar(13),
    @estado bit
AS
    IF NOT EXISTS (SELECT codigo_suplidor FROM cliente WHERE codigo_suplidor = @codigo_suplidor)
        INSERT INTO suplidor (codigo_suplidor, nombre_departamento, email, telefono, estado) VALUES (@codigo_suplidor, @nombre_cliente, @email, @telefono, @estado)
    ELSE 
        UPDATE nombre_suplidor = @nombre_suplidor, email = @email, telefono = @telefono, estado = @estad WHERE codigo_suplidor =  @codigo_suplidor
    SELECT @codigo_suplidor AS codigo_suplidor  

CREATE PROCEDURE upsert_departamento
   @codigo_departamento int
   @nombre_departamento varchar(50)
   @estado bit
AS
    IF NOT EXISTS (SELECT codigo_departamento FROM cliente WHERE codigo_departamento = @codigo_departamento)
        INSERT INTO departamento (codigo_departamento, nombre_departamento, estado) VALUES (@codigo_departamento, @nombre_departamento, @estado)
    ELSE 
        UPDATE nombre_departamento = @nombre_departamento, estado = @estado WHERE codigo_departamento =  @codigo_departamento

CREATE PROCEDURE eliminar_cliente
   @codigo_cliente int
AS
    IF EXISTS (SELECT codigo_cliente FROM cliente WHERE codigo_cliente = @codigo_cliente)
        DELETE FROM cliente WHERE codigo_cliente = @codigo_cliente

CREATE PROCEDURE eliminar_producto
   @codigo_producto int
AS
    IF EXISTS (SELECT codigo_producto FROM producto WHERE codigo_producto = @codigo_producto)
        DELETE FROM producto WHERE codigo_producto = @codigo_producto

CREATE PROCEDURE eliminar_unidad
   @codigo_unidad int
AS
    IF EXISTS (SELECT codigo_unidad FROM unidad WHERE codigo_unidad = @codigo_unidad)
        DELETE FROM unidad WHERE codigo_unidad = @codigo_unidad

CREATE PROCEDURE eliminar_departamento
   @codigo_departamento int
AS
    IF EXISTS (SELECT codigo_departamento FROM departamento WHERE codigo_departamento = @codigo_departamento)
        DELETE FROM departamento WHERE codigo_departamento= @codigo_departamento

CREATE PROCEDURE eliminar_suplidor
   @codigo_suplidor int
AS
    IF EXISTS (SELECT codigo_suplidor FROM suplidor WHERE codigo_suplidor = @codigo_suplidor)
        DELETE FROM suplidor WHERE codigo_suplidor = @codigo_suplidor

EXEC upsert_departameno @codigo_departamento, @nombre_departamento, @estado

EXEC upsert_cliente @codigo_cliente, @nombre_cliente, @email, @telefono, @estado

EXEC upsert_producto @codigo_producto, @nombre_producto, @codigo_departamento, @codigo_suplidor, @cantidad_existente, @punto_reo, @codigo_unidad, @estado, @precio_de_venta

EXEC upsert_unidad @codigo_unidad, @nombre_producto, @estado

EXEC upsert_suplidor @codigo_suplidor, @nombre_cliente, @email, @telefono, @estado

EXEC upsert_departamento @codigo_departamento, @nombre_departamento, @estado

EXEC eliminar_cliente @codigo_cliente

EXEC eliminar_producto @codigo_producto

EXEC eliminar_unidad @codigo_unidad

EXEC eliminar_departamento @codigo_departamento

EXEC eliminar_suplidor @codigo_suplidor


CREATE PROCEDURE consultarDepartamento
@codigo_departamento int
SELECT * FROM departamento WHERE codigo_departamento = @codigo_departamento;


CREATE PROCEDURE consultarSuplidor
@codigo_suplidor int
SELECT * FROM suplidor WHERE codigo_suplidor = @codigo_suplidor;


CREATE PROCEDURE consultarCliente
@codigo_cliente int
SELECT * FROM cliente WHERE codigo_cliente = @codigo_cliente;


CREATE PROCEDURE consultarUnidad
@codigo_unidad int
SELECT * FROM unidad WHERE codigo_unidad = @codigo_unidad;


CREATE PROCEDURE consultarProducto
@codigo_producto int
SELECT * FROM producto WHERE codigo_producto = @codigo_producto;

EXEC consultarDepartamento @codigo_departamento 

EXEC consultarSuplidor @codigo_suplidor 

EXEC consultarCliente @codigo_cliente 

EXEC consultarUnidad @codigo_unidad 

EXEC consultarProducto @codigo_producto 


SELECT  producto.codigo_producto,
    producto.nombre_producto,
    producto.studentdesc,
    departamento.nombre_departamento,
    suplidor.nombre_suplidor,
    producto.cantidad_existente,
    unidad.nombre_unidad,
    producto.precio_venta
FROM producto
INNER JOIN departamento
    ON producto.codigo_departamento = departamento.codigo_departamento
INNER JOIN suplidor
    ON producto.codigo_suplidor = suplidor.codigo_suplidor
INNER JOIN unidad
    ON producto.codigo_unidad = unidad.codigo_unidad;


SELECT  producto.codigo_producto,
    producto.nombre_producto,
    producto.studentdesc,
    departamento.nombre_departamento,
    suplidor.nombre_suplidor,
    producto.cantidad_existente,
    unidad.nombre_unidad,
    producto.precio_venta
FROM producto
INNER JOIN departamento
    ON producto.codigo_departamento LIKE  ('%' || departamento.codigo_departamento || '%')
INNER JOIN suplidor
    ON producto.codigo_suplidor LIKE  ('%' || suplidor.codigo_suplidor || '%')
INNER JOIN unidad
    ON producto.codigo_unidad LIKE  ('%' || unidad.codigo_unidad || '%');       


CREATE PROCEDURE Facturas
    @fecha_inicial DataTime,
    @fecha_final DataTime,
    @codigo_cliente int = 0,
    @order int = 1
AS
    SELECT * FROM cliente.nombre_cliente
        FROM ventas 
        INNER JOIN cliente ON Ventas.codigo_cliente = cliente.codigo_cliente
      WHERE ventas.fecha >= @fecha_inicial AND ventas.fecha_final <= @fecha_final AND (@codigo_cliente = 0 OR ventas.codigo_cliente = @codigo_cliente)
      ORDER BY 
       CASE WHEN order = 1 THEN numero_factura END Desc,
       CASE WHEN order = 2 THEN fecha END ASC
       CASE WHEN order = 3 THEN nombre_cliente END ASC