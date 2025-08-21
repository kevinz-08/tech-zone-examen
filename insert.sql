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
