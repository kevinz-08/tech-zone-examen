-- Un procedimiento almacenado para registrar una venta.
CREATE OR REPLACE PROCEDURE registrar_venta(
    p_id_cliente VARCHAR,
    p_detalle_ventas JSONB,
    OUT p_id_venta VARCHAR,
    OUT p_total_venta NUMERIC
) AS $$
DECLARE
    v_precio_unitario NUMERIC;
    v_cantidad INT;
    v_stock INT;
    v_id_producto VARCHAR;
    v_id_detalle VARCHAR;
BEGIN
    SELECT 'V' || LPAD((COALESCE(MAX(SUBSTRING(id_venta FROM 2)::INT), 0) + 1)::TEXT, 3, '0')
    INTO p_id_venta
    FROM ventas;