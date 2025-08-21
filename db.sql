CREATE TABLE proveedores(
    id_proveedor VARCHAR(10) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    correo VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) NOT NULL,
    PRIMARY KEY(id_proveedor)
);

CREATE TABLE clientes(
    id_cliente VARCHAR(20) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    correo VARCHAR(70) NOT NULL,
    telefono NUMERIC(10, 0) NOT NULL,
    PRIMARY KEY(id_cliente)
);

CREATE TABLE productos(
    id_producto VARCHAR(10) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    precio NUMERIC(10, 2) NOT NULL,
    stock INTEGER NOT NULL,
    id_proveedor VARCHAR(10) NOT NULL,
    PRIMARY KEY(id_producto),
    FOREIGN KEY(id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE ventas(
    id_venta VARCHAR(10) NOT NULL,
    fecha TIMESTAMP NOT NULL,
    id_cliente VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_venta),
    FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE detalle_venta(
    id_detalle VARCHAR(10) NOT NULL,
    id_venta VARCHAR(10) NOT NULL,
    id_producto VARCHAR(10) NOT NULL,
    cantidad INTEGER NOT NULL,
    precio NUMERIC(10, 2) NOT NULL,
    PRIMARY KEY(id_detalle),
    FOREIGN KEY(id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY(id_producto) REFERENCES productos(id_producto)
);