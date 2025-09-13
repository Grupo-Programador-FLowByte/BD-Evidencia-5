-- Franco
-- Crear la tabla Usuario:
-- id_usuario (PK, INT, AUTOINCREMENT, NOT NULL)
-- nombre (VARCHAR(45), NOT NULL)
-- usuario (VARCHAR(45), UNIQUE, NOT NULL)
-- clave (VARCHAR(45), NOT NULL)
-- rol (VARCHAR(45), NOT NULL) -- Ej: admin, estandar

-- Sergio
-- Crear la tabla Dispositivo:
-- id_dispositivo (PK, INT, AUTOINCREMENT, NOT NULL)
-- nombre (VARCHAR(45), NOT NULL)
-- tipo (VARCHAR(45), NOT NULL)
-- estado (VARCHAR(45), NOT NULL)
-- usuario_id_usuario (FK que referencia a Usuario.id_usuario)

-- Valentino
-- Crear la tabla Automatizacion:
-- id_automatizacion (PK, INT, AUTOINCREMENT, NOT NULL)
-- nombre (VARCHAR(45), NOT NULL)
-- funcionalidad (VARCHAR(45), NOT NULL)
-- estado (VARCHAR(45), NOT NULL) 
-- usuario_id_usuario (FK que referencia a Usuario.id_usuario)

-- Lucas
-- Crear la tabla intermedia para la relación muchos a muchos:
-- automatizacion_has_dispositivo
-- automatizacion_id_automatizacion (FK que referencia a Automatizacion.id_automatizacion)
-- dispositivo_id_dispositivo (FK que referencia a Dispositivo.id_dispositivo)
-- PRIMARY KEY compuesta por ambas FK
CREATE TABLE automatizacion_has_dispositivo (
    automatizacion_id_automatizacion INT NOT NULL,
    dispositivo_id_dispositivo INT NOT NULL,
    PRIMARY KEY (automatizacion_id_automatizacion, dispositivo_id_dispositivo),
    FOREIGN KEY (automatizacion_id_automatizacion) REFERENCES Automatizacion(id_automatizacion),
    FOREIGN KEY (dispositivo_id_dispositivo) REFERENCES Dispositivo(id_dispositivo)
);