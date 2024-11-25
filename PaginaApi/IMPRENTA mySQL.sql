CREATE DATABASE Imprenta_Pigmentos_db;
USE Imprenta_Pigmentos_db;

CREATE TABLE Servicios (
  ID_Servicio INT AUTO_INCREMENT PRIMARY KEY,
  Servicio VARCHAR(50)
);

SELECT * FROM Servicios;

INSERT INTO Servicios (Servicio)
VALUES
  ('Impresiones en papel'),
  ('Impresión en gran formato'),
  ('Etiquetas'),
  ('Laminado'),
  ('Personalización'),
  ('Corte en vinil'),
  ('Offset'),
  ('Papeleria Social');
  
  CREATE TABLE Sub_Servicios (
  ID_Sub_Servicio INT AUTO_INCREMENT PRIMARY KEY,
  ID_Servicio INT,
  Sub_Servicio VARCHAR(100),
  FOREIGN KEY (ID_Servicio) REFERENCES Servicios(ID_Servicio)
);

SELECT * FROM Sub_Servicios;

INSERT INTO Sub_Servicios (ID_Servicio, Sub_Servicio)
VALUES
(1, 'Papel couche tamaño tabloide '),
(1, 'Papel couche tamaño tabloide ambos lados'),
(1, 'Papel adhesivo tamaño tabloide'),
(1, 'Papel bond en blanco y negro tamaño carta'),
(1, 'Papel bond a color en tamaño carta'),
(1, 'Papel bond a color tamaño tabloide'),
(2, 'Lona'),
(2, 'Vinil brillante'),
(2, 'Vinil microperforado'),
(2, 'Lienzo de coroplast chico'),
(2, 'Lienzo de coroplast grande'),
(2, 'Lienzo de troviceL'),
(2, 'Lona con araña'),
(3, 'Hoja de stickers en papel adhesivo con suaje'),
(3, 'Lienzo de stickers con suaje en vinil brillante'),
(3, 'Lienzo de stickers con suaje en vinil transparente'),
(3, 'Lienzo de stickers con suaje en vinil holográfico'),
(3, 'Hoja de stickers laminados en papel adhesivo con suaje'),
(4, 'Laminado por un lado'),
(4, 'Laminado por ambos lados'),
(5, 'Tazas 11oz'),
(5, 'Playeras en Vinil'),
(5, 'Playeras en sublimación'),
(5, 'Playeras en DTF'),
(6, 'Nombres y textos de 10 a 20cm de largo en vinil normal'),
(6, 'Nombres y textos de 10 a 20cm de largo en vinil especial'),
(6, 'Corte en vinil'),
(7, 'Recetarios'),
(7, 'Hojas membretadas'),
(7, 'Notas de venta'),
(7, 'Volantes'),
(7, 'Boletos'),
(8, 'Tarjetas de presentación'),
(8, 'Catálogos'),
(8, 'Revistas'),
(8, 'Calendarios');

CREATE TABLE Proveedores (
ID_Proveedor INT AUTO_INCREMENT PRIMARY KEY,
Proveedor VARCHAR(50));

SELECT * FROM Proveedores;

INSERT INTO Proveedores (Proveedor)
VALUES
('PaperShell'),
('Adosa'),
('Plastiva'),
('Viniles LucyRivera'),
('Mercado Libre'),
('Amazon'),
('Creatividad Promocional'),
('Aliexpress'),
('Damaso'),
('Sago'),
('Colormake'),
('Lonas y telas Valdes'),
('Valoris'),
('Otro');

CREATE TABLE Inventario (
  ID_Inventario INT AUTO_INCREMENT PRIMARY KEY,
  Material VARCHAR(100),
  Cantidad INT,
  ID_Proveedor INT,
  FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor)
);

SELECT * FROM Inventario;

INSERT INTO Inventario (Material, Cantidad, ID_Proveedor)
VALUES
('hojas de couche grueso en tamaño tabloide', 200, 14),
('Hojas de papel adhesivo tamaño tabloide', 85, 9),
('Hojas de papel bond tamaño tabloide', 125, 9),
('Hojas de papel couche delgado tamaño tabloide', 95, 1),
('Rollo de laminado brillante', 1, 5),
('Tinta de impresora láser K1 (Negro)', 1, 13),
('Tinta de impresora láser K2 (Negro)', 1, 13),
('Tinta de impresora láser C (Cyan)', 1, 13),
('Tinta de impresora láser M (Magenta)', 1, 13),
('Tinta de impresora láser Y (Amarillo)', 1, 13),
('Tinta de sublimación Negro', 1, 11),
('Tinta de sublimación Cyan', 1, 11),
('Tinta de sublimación Magenta', 1, 11),
('Tinta de sublimación Amarillo', 1, 11),
('Hojas tamaño A4 sublimación', 65, 11),
('Tarjetas de PVC sublimables', 175, 5),
('Plotter de corte de 60cm', 1, 14),
('Impresora Laser Docucolor 252', 1, 14),
('Impresora de sublimación Epson EcoTank', 1, 14),
('Laminadora de 30cm', 1, 14),
('Laminadora de 25 cm', 1, 6),
('Plancha de sublimación de 35x35cm', 1, 11),
('Viniles textiles', 1, 4),
('Viniles de corte', 1, 4),
('Vinil sublimable holográfico', 1, 3),
('Vinil sublimable brillante', 1, 3);

CREATE TABLE Formulario (
ID_Formulario INT AUTO_INCREMENT PRIMARY KEY,
Nombre_Completo NVARCHAR(100),
Correo_Electronico NVARCHAR(100),
Mensaje TEXT,
Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Formulario_Paquete (
ID_Formulario_Paquete INT AUTO_INCREMENT PRIMARY KEY,
Nombre_Completo NVARCHAR(100),
Correo_Electronico NVARCHAR(100),
Mensaje TEXT,
Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);