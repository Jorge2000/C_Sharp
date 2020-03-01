Create table departamentos(
   codigo_departamento int not null identity primary key,
   nombre_departamento varchar(50),
   estado bit
 );
 
 Create table suplidores(
   codigo_suplidor int not null identity primary key,
   nombre_suplidor varchar(50),
   email varchar(30),
   telefono varchar(13),
   estado bit
 );
 
 Create table clientes(
   codigo_clientes int not null identity primary key,
   nombre_clientes varchar(50),
   email varchar(30),
   telefono varchar(13),
   estado bit
 );
 
 Create table unidades(
   codigo_unidad int not null identity primary key,
   nombre_unidad varchar(50),
   estado bit
 );
 
 Create table productoductos(
   codigo_producto int not null identity primary key,
   nombre_producto varchar(50),
   codigo_departamento int not null foreign key references departamentos(codigo_departamento),
   codigo_suplidor int not null foreign key references suplidores(codigo_suplidor),
   cantidad_existente int,
   punReo int,
   codigo_unidad int not null foreign key references unidades(codigo_unidad),
   estado bit,
   preVen int
 );
 
 Create table detalles(
   numFac int not null identity primary key,
   cantidadVen int,
   codigo_producto int not null foreign key references productoductos(codigo_producto),
   preVen int
 );
 
 Create table ventas(
   numFac int not null identity primary key,
   fecha date,
   codigo_clientes int not null foreign key references clientes(codigo_clientes),
   estado bit
 );
 
 
 
 CREATE PROCEDURE actualizar_departameno
	@codigo_departamento int,
	@nombre_departamento varchar(50),
	@status bit
AS
	IF @codigo_departamento = 0
	BEGIN 
		SELECT @codigo_departamento.MAX(codigo_departamento)
		FROM departamento
		IF @codigo_departamento IS NULL SET @codigo_departamento = 0
		SET @codigo_departamento = @codigo_departamento + 1
	END
	IF NOT EXISTS(SELECT codigo_departamento FROM departamento WHERE codigo_departamento = @codigo_departamento)
	INSERT INTO departamento (codigo_departamento, nombre_departamento, status) VALUES (@codigo_departamento, @nombre_departamento, @status)
	ELSE 
		UPDATE departamento SET nombre_departamento = @nombre_departamento, status = @status WHERE codigo_departamento = @codigo_departamento
	SELECT @codigo_departamento AS codigo_departamento