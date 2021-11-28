CREATE DATABASE Trabajo1
GO
USE Trabajo1
GO

CREATE TABLE cliente(
  id_Cliente  INT NOT NULL,
  INEcliente  VARCHAR(45)  NOT NULL,
  nombrecliente           VARCHAR(45)  NOT NULL,
  nocelular   VARCHAR(45)  NOT NULL,
  PRIMARY KEY (id_Cliente)
);

insert into cliente values(29438483, 'MAJEITL02119888H325', 'Jesus Manuel', 86729592970);
insert into cliente values(372654596, 'GARFJ0235335H3H120', 'Jesus Alejandro Gomez', 8675829525);
insert into cliente values(482847357, 'VZEER4857373H48585', 'Luisa Vazquez ', 8673938347);
insert into cliente values(82757272, 'ROAJ3558683684H906', 'Jose Antonio Rodriguez', 8672157480);
insert into cliente values(82746365, 'HEQIEF45890667S403', 'Lucia Hernandez', 8674874807);


CREATE TABLE conductor(
  id_Conductor VARCHAR(45)  NOT NULL,
  Pasaporte       INT  NOT NULL,
  HistorialViajes     VARCHAR(45)  NOT NULL,
  NombreConductor     VARCHAR(60)  NOT NULL,
   PRIMARY KEY (id_Conductor)
);

insert into conductor values ('211H002', 690294813, '+100 Viajes Realizados', 'Hector David Martinez');
insert into conductor values ('200H922', 834872742, '+200 Viajes Realizados', 'Jose Manuel Lopez');
insert into conductor values ('200H111', 038374355, '55 Viajes Realizados', 'Misael Regalado');
insert into conductor values ('200S519', 938355722, '80 Viajes Realizados', 'Lucia Del Angel');
insert into conductor values ('210H329', 299393133, '0 Viajes(Conductor Nuevo)', 'Junior Ramirez');	               


CREATE TABLE automovil(
  id_Automovil  VARCHAR(45)  NOT NULL,
  Modelo     VARCHAR(45)  NOT NULL,
  Marca      VARCHAR(60)  NOT NULL,
  Placas     VARCHAR(45)  NOT NULL,
  PRIMARY KEY (id_Automovil)
); 

insert into automovil values ('1U49US484', 'Nissan Versa','Nissan ', '4084 HIP');
insert into automovil values ('4A24FA854', 'Volkswagen ID.3', 'Volkswagen ', 'J2402 CJU');
insert into automovil values ('4U74MX2642', 'Toyota Aygo X Cross', 'Toyota ', '6523 DPT');
insert into automovil values ('0M84MX772', 'Honda Accord', 'Honda ', '4639 ILK');
insert into automovil values ('4A49MX811', 'Ford Focus', 'Ford ', '2299 KXE');


CREATE TABLE viaje(
  id_Viaje       INT  NOT NULL,
  Direccion      VARCHAR(60)  NOT NULL,
  Tiempo         VARCHAR(45)  NOT NULL,
  Costo          INT  NOT NULL,
 id_Cliente     INT  NOT NULL,
  id_Conductor  VARCHAR(45) NULL,
  id_Automovil   VARCHAR(45)  NULL,
CONSTRAINT FK_VIA_CLI FOREIGN KEY (id_Cliente) REFERENCES cliente(id_Cliente),
  CONSTRAINT FK_VIA_CON FOREIGN KEY (id_Conductor)     REFERENCES conductor(id_Conductor),
CONSTRAINT FK_VIA_AUT FOREIGN KEY (id_Automovil)  REFERENCES automovil(id_Automovil),
);


insert into viaje values(100428525, 'Avenida Tecnologico #107', '0:30 min',$30, 29438483, '211H002', '1U49US484' );
insert into viaje values(203852940,'Avenida Vicente Guerrero #1819', '0:15 min',$32 , 372654596, '200H922', '4A24FA854');
insert into viaje values(028582658, 'Calle Abraham Lincoln #1917','1:15 min',$62, 482847357, '200H111', '4U74MX2642' );
insert into viaje values(183029584,'Calle Madero #3520', '0:12 min',$20, 82757272, '200S519', '0M84MX772');
insert into viaje values(82746365, 'Calle Ignacio Zaragoza #4103', '0:45 min' , $55, 82746365, '210H329', '4A49MX811' );
