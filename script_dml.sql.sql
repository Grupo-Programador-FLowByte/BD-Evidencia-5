-- Franco
-- insert
INSERT INTO Usuario (nombre,usuario,clave,rol) VALUES ("Franco Quispe", "Franco", "clave1", "adm");
INSERT INTO Usuario (nombre,usuario,clave,rol) VALUES ("Lucas Gomez", "Lucas", "clave2", "estandar");
INSERT INTO Usuario (nombre,usuario,clave,rol) VALUES ("Valentino Lorenti", "Valen", "clave3", "estandar");
INSERT INTO Usuario (nombre,usuario,clave,rol) VALUES ("Sergio Corso", "Mauri", "clave4", "estandar");

-- fetch 
SELECT * FROM Usuario;

-- Sergio
-- insert
INSERT INTO Dispositivo (nombre, tipo, estado, id_usuario) VALUES
('Termostato', 'climatizador', 'encendido', 1),
('Cámara Entrada', 'sensor', 'encendido', 1),
('Luz Cocina', 'luz', 'apagado', 1),
('Sensor Movimiento', 'sensor', 'encendido', 1),
('Ventilador', 'climatizador', 'apagado', 2),
('Luz Dormitorio', 'luz', 'encendido', 2),
('Cámara Patio', 'sensor', 'apagado', 2),
('Sensor Puerta', 'sensor', 'encendido', 2),
('Luz Baño', 'luz', 'apagado', 2),
('Luz Oficina', 'luz', 'apagado', 3),
('Termostato Oficina', 'climatizador', 'encendido', 3),
('Sensor Garage', 'sensor', 'encendido', 3),
('Luz Garage', 'luz', 'apagado', 3),
('Ventilador Sala', 'climatizador', 'apagado', 3),
('Luz Comedor', 'luz', 'encendido', 4),
('Cámara Comedor', 'sensor', 'apagado', 4),
('Sensor Patio', 'sensor', 'encendido', 4),
('Ventilador Dormitorio', 'climatizador', 'apagado', 4),
('Luz Jardín', 'luz', 'encendido', 4),
('Luz Terraza', 'luz', 'apagado', 1),
('Cámara Terraza', 'sensor', 'encendido', 2),
('Sensor Cocina', 'sensor', 'apagado', 3),
('Ventilador Cocina', 'climatizador', 'encendido', 4),
('Luz Hall', 'luz', 'apagado', 1),
('Cámara Hall', 'sensor', 'encendido', 2),
('Sensor Dormitorio', 'sensor', 'apagado', 3),
('Luz Balcón', 'luz', 'encendido', 4),
('Luz Habitación', 'luz', 'apagado', 4),
('Cámara Jardín', 'luz', 'encendido', 2),
('Ventilador Hall', 'climatizador', 'apagado', 1);

-- fetch 
SELECT * FROM Dispositivo;


-- Valentino
-- Insertar al menos 3 automatizaciones asociadas a distintos usuarios:
-- INSERT INTO Automatizacion (nombre, funcionalidad, estado, usuario_id_usuario) VALUES (...);
-- Incluir una consulta SELECT * FROM Automatizacion;
--IMPORTANTE: AGREGAR AL SCRIPT
/* ('Modo ahorro de energía', 'apaga dispositivos no esenciales automáticamente', 'esencial', 1),
('Control temperatura', 'ajusta temperatura a 22°C', 'esencial', 3),
('Alarma patio', 'suena alarma si se detecta intruso', 'esencial', 5); */

-- Lucas
-- Insertar relaciones de ejemplo entre automatizaciones y dispositivos:
-- INSERT INTO automatizacion_has_dispositivo (automatizacion_id_automatizacion, dispositivo_id_dispositivo) VALUES (...);
-- Incluir un SELECT con JOIN para mostrar qué dispositivos pertenecen a cada automatización.
-- Lucas: Insertar relaciones de ejemplo entre automatizaciones y dispositivos
-- Relación muchos a muchos

-- Automatización 1: "Modo ahorro de energía" → varios dispositivos
INSERT INTO automatizacion_has_dispositivo (automatizacion_id_automatizacion, dispositivo_id_dispositivo) VALUES 
(1, 1),(1, 4),(1, 7),(1, 10),(1, 16),(1, 20),(1, 25),(1, 29);

-- Automatización 2: "Control temperatura" → varios dispositivos
INSERT INTO automatizacion_has_dispositivo (automatizacion_id_automatizacion, dispositivo_id_dispositivo) VALUES 
(2, 2),(2, 6),(2, 11),(2, 15),(2, 24),(2, 30);

-- Automatización 3: "Alarma patio" → varios dispositivos
INSERT INTO automatizacion_has_dispositivo (automatizacion_id_automatizacion, dispositivo_id_dispositivo) VALUES 
(3, 3),(3, 8),(3, 12),(3, 17),(3, 22),(3, 27);

