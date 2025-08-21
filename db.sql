CREATE TABLE "clientes"(
    "id_cliente" VARCHAR(20) NOT NULL,
    "nombre" VARCHAR(255) NOT NULL,
    "correo" VARCHAR(70) NOT NULL,
    "telefono" NUMERIC(10, 0) NOT NULL
);


ALTER TABLE
    "clientes" ADD PRIMARY KEY("id_cliente");

CREATE TABLE "productos"(
    "id_producto" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "nombre" VARCHAR(255) NOT NULL,
    "categoria" VARCHAR(255) NOT NULL,
    "precio" VARCHAR(255) CHECK
        ("precio" IN('')) NOT NULL,
        "stock" BOOLEAN NOT NULL,
        "id_proveedor" SERIAL NOT NULL
);

CREATE TABLE "ventas"(
    "id_venta" SERIAL NOT NULL,
    "fecha" DATE NOT NULL,
    "id_cliente" VARCHAR(20) NOT NULL
);

ALTER TABLE
    "ventas" ADD PRIMARY KEY("id_venta");

CREATE TABLE "proveedores"(
    "id_proveedor" INT NOT NULL,
    "nombre" VARCHAR(255) NOT NULL,
    "correo" VARCHAR(255) NOT NULL,
    "telefono" VARCHAR(255) NOT NULL
);

ALTER TABLE
    "proveedores" ADD PRIMARY KEY("id_proveedor");

CREATE TABLE "detalle_venta"(
    "id_detalle" SERIAL NOT NULL,
    "id_venta" SERIAL NOT NULL,
    "id_producto" SERIAL NOT NULL,
    "cantidad" INTEGER NOT NULL,
    "precio" VARCHAR(255) CHECK
        ("precio" IN('')) NOT NULL
);

ALTER TABLE
    "detalle_venta" ADD PRIMARY KEY("id_detalle");
ALTER TABLE
    "ventas" ADD CONSTRAINT "ventas_id_cliente_foreign" FOREIGN KEY("id_cliente") REFERENCES "clientes"("id_cliente");
ALTER TABLE
    "detalle_venta" ADD CONSTRAINT "detalle_venta_id_venta_foreign" FOREIGN KEY("id_venta") REFERENCES "ventas"("id_venta");
ALTER TABLE
    "detalle_venta" ADD CONSTRAINT "detalle_venta_id_producto_foreign" FOREIGN KEY("id_producto") REFERENCES "productos"("id_producto");
ALTER TABLE
    "productos" ADD CONSTRAINT "productos_id_proveedor_foreign" FOREIGN KEY("id_proveedor") REFERENCES "proveedores"("id_proveedor");

DROP TABLE clientes, detalle_venta, productos, ventas, proveedores