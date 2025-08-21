SET search_path TO miscompras;

-- clientes
INSERT INTO clientes (id_cliente, nombre, correo, telefono) VALUES
('CC1001', 'Camila', 'camila.ramirez@example.com', '3004567890'),
('CC1002', 'Andrés', 'andres.pardo@example.com', '3109876543'),
('CC1003','Valeria', 'valeria.gutierrez@example.com', '3012223344'),
('CC1004', 'Juan', 'juan.soto@example.com', '3155556677'),
('CC1005', 'Luisa', 'luisa.fernandez@example.com', '3028889911'),
('CC1006', 'Carlos', 'carlos.munoz@example.com', '3014567890'),
('CC1007', 'Diana', 'diana.rojas@example.com', '3126665544'),
('CC1008', 'Miguel', 'miguel.vargas@example.com', '3201234567');

-- ventas
INSERT INTO ventas (id_venta, fecha, id_cliente) VALUES
('1', '2025-07-02 10:15:23', 'CC1001'),
('2', '2025-07-03 18:45:10', 'CC1002'),
('3', '2025-07-05 09:05:00', 'CC1003'),
('4', '2025-07-10 14:22:40', 'CC1001'),
('5', '2025-07-12 11:11:11', 'CC1004'),
('6', '2025-07-15 19:35:05', 'CC1005'),
('7', '2025-07-18 08:55:30', 'CC1006'),
('8', '2025-07-20 16:01:00', 'CC1007'),
('9', '2025-07-25 12:20:45', 'CC1008');

-- detalle venta
INSERT INTO detalle_venta (id_detalle, id_venta, id_producto, cantidad, precio) VALUES
('1', '1', 'P1001', 2, 15000.00),
('2', '1', 'P1002', 1, 25000.00),
('3', '2', 'P1003', 3, 30000.00),
('4', '3', 'P1004', 1, 20000.00),
('5', '4', 'P1005', 2, 18000.00),
('6', '5', 'P1006', 1, 22000.00),
('7', '6', 'P1007', 4, 12000.00),
('8', '7', 'P1008', 2, 16000.00),
('9', '8', 'P1009', 3, 14000.00),
('10', '9', 'P1010', 1, 17000.00);

-- productos
INSERT INTO productos (id_producto, nombre, categoria, precio, stock, id_proveedor) VALUES
('1', 'Portatil Asus', 'tecnologia', 1500000, TRUE, 'PR001'),
('2', 'Smartphone Samsung', 'tecnologia', 2500000, 30, 'PR002'),
('3', 'Tablet Apple', 'tecnologia', 3000000, 20, 'PR003'),
('4', 'Monitor LG', 'tecnologia', 2000000, 15, 'PR004'),
('5', 'Teclado Logitech', 'accesorios', 180000, 100, 'PR005'),
('6', 'Mouse Inalambrico HP', 'accesorios', 220000, 80, 'PR006'),
('7', 'Disco Duro Externo Seagate', 'almacenamiento', 1200000, 40, 'PR007'),
('8', 'Impresora Epson', 'perifericos', 1600000, 25, 'PR008'),
('9', 'Cámara Canon DSLR', 'fotografia', 1400000, 10, 'PR009');