-- proveedores
INSERT INTO proveedores (id_proveedor, nombre, correo, telefono) VALUES
('PR001', 'Tecnología Global S.A.', 'contacto@tecnologiaglobal.com', '3001234567'),
('PR002', 'Electrónica Avanzada Ltda', 'ventas@electronicaavanzada.com', '3109876543'),
('PR003', 'Apple Store Colombia', 'soporte@applestoreco.com', '3155554444'),
('PR004', 'LG Electronics Colombia', 'info@lgcolombia.com', '3201112233'),
('PR005', 'Logitech Peripherals', 'colombia@logitech.com', '3012223344'),
('PR006', 'HP Technology', 'ventas@hp.com.co', '3023334455'),
('PR007', 'Seagate Storage', 'soporte@seagate.com.co', '3034445566'),
('PR008', 'Epson Colombia', 'info@epson.com.co', '3045556677'),
('PR009', 'Canon Photography', 'ventas@canon.com.co', '3056667788');

-- clientes
INSERT INTO clientes (id_cliente, nombre, correo, telefono) VALUES
('CC1001', 'Camila Ramírez', 'camila.ramirez@example.com', 3004567890),
('CC1002', 'Andrés Pardo', 'andres.pardo@example.com', 3109876543),
('CC1003', 'Valeria Gutiérrez', 'valeria.gutierrez@example.com', 3012223344),
('CC1004', 'Juan Soto', 'juan.soto@example.com', 3155556677),
('CC1005', 'Luisa Fernández', 'luisa.fernandez@example.com', 3028889911),
('CC1006', 'Carlos Muñoz', 'carlos.munoz@example.com', 3014567890),
('CC1007', 'Diana Rojas', 'diana.rojas@example.com', 3126665544),
('CC1008', 'Miguel Vargas', 'miguel.vargas@example.com', 3201234567);

-- productos
INSERT INTO productos (id_producto, nombre, categoria, precio, stock, id_proveedor) VALUES
('P1001', 'Portátil Asus VivoBook', 'tecnologia', 1500000.00, 25, 'PR001'),
('P1002', 'Smartphone Samsung Galaxy S21', 'tecnologia', 2500000.00, 30, 'PR002'),
('P1003', 'Tablet Apple iPad Pro', 'tecnologia', 3000000.00, 20, 'PR003'),
('P1004', 'Monitor LG 27 pulgadas', 'tecnologia', 2000000.00, 15, 'PR004'),
('P1005', 'Teclado Logitech Mecánico', 'accesorios', 180000.00, 100, 'PR005'),
('P1006', 'Mouse Inalámbrico HP', 'accesorios', 220000.00, 80, 'PR006'),
('P1007', 'Disco Duro Externo Seagate 2TB', 'almacenamiento', 1200000.00, 40, 'PR007'),
('P1008', 'Impresora Epson EcoTank', 'perifericos', 1600000.00, 25, 'PR008'),
('P1009', 'Cámara Canon DSLR EOS', 'fotografia', 1400000.00, 10, 'PR009'),
('P1010', 'Audífonos Sony Bluetooth', 'accesorios', 170000.00, 50, 'PR002');

-- ventas
INSERT INTO ventas (id_venta, fecha, id_cliente) VALUES
('V001', '2025-07-02 10:15:23', 'CC1001'),
('V002', '2025-07-03 18:45:10', 'CC1002'),
('V003', '2025-07-05 09:05:00', 'CC1003'),
('V004', '2025-07-10 14:22:40', 'CC1001'),
('V005', '2025-07-12 11:11:11', 'CC1004'),
('V006', '2025-07-15 19:35:05', 'CC1005'),
('V007', '2025-07-18 08:55:30', 'CC1006'),
('V008', '2025-07-20 16:01:00', 'CC1007'),
('V009', '2025-07-25 12:20:45', 'CC1008');

-- detalle de ventas
INSERT INTO detalle_venta (id_detalle, id_venta, id_producto, cantidad, precio) VALUES
('D001', 'V001', 'P1001', 2, 1500000.00),
('D002', 'V001', 'P1002', 1, 2500000.00),
('D003', 'V002', 'P1003', 3, 3000000.00),
('D004', 'V003', 'P1004', 1, 2000000.00),
('D005', 'V004', 'P1005', 2, 180000.00),
('D006', 'V005', 'P1006', 1, 220000.00),
('D007', 'V006', 'P1007', 4, 1200000.00),
('D008', 'V007', 'P1008', 2, 1600000.00),
('D009', 'V008', 'P1009', 3, 1400000.00),
('D010', 'V009', 'P1010', 1, 170000.00);
