-- listar los productos con stock menor a 5 unidades
SELECT p.id_producto, p.nombre, p.stock
FROM productos p
WHERE p.stock < 5; -- para adrian -> en la inserccion de datos que hice no hay ninguno con menos de 5 unidades en stock, asi que voy a  hacerla con menos de 15.

SELECT p.id_producto, p.nombre, p.stock
FROM productos p
WHERE p.stock <= 15;

-- Calcular ventas totales de un mes específico
SELECT SUM(dv.cantidad * dv.precio) AS ventas_del_mes
FROM detalle_venta dv
JOIN ventas v ON dv.id_venta = v.id_venta 
WHERE date_trunc('month', v.fecha) = '2025-07-01';

-- Obtener el cliente con más compras realizadas.
SELECT c.id_cliente, c.nombre, COUNT(v.id_venta)
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre
LIMIT 1;

-- Listar los productos más vendidos.
SELECT p.id_producto, p.nombre, SUM(dv.cantidad)
FROM productos p
JOIN detalle_venta dv ON p.id_producto = dv.id_producto
GROUP BY p.id_producto, p.nombre
LIMIT 5;

-- Consultar ventas realizadas en un rango de fechas.
SELECT v.id_venta, v.fecha, c.nombre AS cliente, SUM(dv.cantidad * dv.precio)
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN detalle_venta dv ON v.id_venta = dv.id_venta
WHERE v.fecha BETWEEN '2025-07-01' AND '2025-07-31'
GROUP BY v.id_venta, v.fecha, c.nombre
ORDER BY v.fecha;

-- Identificar clientes que no han comprado en los últimos 6 meses.
SELECT c.id_cliente, c.nombre
FROM clientes c
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE v.fecha < NOW() - INTERVAL '6 months' OR v.id_venta IS NULL
GROUP BY c.id_cliente, c.nombre;