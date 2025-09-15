INSERT INTO Usuario (nombre,usuario,clave,rol) VALUES ("Franco Quispe", "Franco", "clave1", "adm");
INSERT INTO Usuario (nombre,usuario,clave,rol) VALUES ("Lucas Gomez", "Lucas", "clave2", "estandar");
INSERT INTO Usuario (nombre,usuario,clave,rol) VALUES ("Valentino Lorenti", "Valen", "clave3", "estandar");
INSERT INTO Usuario (nombre,usuario,clave,rol) VALUES ("Sergio Corso", "Mauri", "clave4", "estandar");

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

INSERT INTO Automatizacion (nombre, funcionalidad, estado, id_usuario) VALUES
('Modo ahorro de energía', 'apaga dispositivos no esenciales automáticamente', 'encendido', 1),
('Control temperatura', 'ajusta temperatura a 22°C', 'apagado', 3),
('Alarma patio', 'suena alarma si se detecta intruso', 'encendido', 4);

INSERT INTO automatizacion_has_dispositivo (automatizacion_id_automatizacion, dispositivo_id_dispositivo) VALUES 
(1, 1),(1, 4),(1, 7),(1, 10),(1, 16),(1, 20),(1, 25),(1, 29);

INSERT INTO automatizacion_has_dispositivo (automatizacion_id_automatizacion, dispositivo_id_dispositivo) VALUES 
(2, 2),(2, 6),(2, 11),(2, 15),(2, 24),(2, 30);

INSERT INTO automatizacion_has_dispositivo (automatizacion_id_automatizacion, dispositivo_id_dispositivo) VALUES 
(3, 3),(3, 8),(3, 12),(3, 17),(3, 22),(3, 27);

SELECT * FROM Usuario;
SELECT * FROM Dispositivo;
SELECT * FROM Automatizacion;
SELECT * FROM automatizacion_has_dispositivo where automatizacion_id_automatizacion = 1;
SELECT * FROM automatizacion_has_dispositivo where automatizacion_id_automatizacion = 2;

SELECT id_dispositivo, nombre
FROM Dispositivo
WHERE id_dispositivo IN (SELECT dispositivo_id_dispositivo FROM automatizacion_has_dispositivo);

SELECT id_dispositivo, nombre
FROM Dispositivo
WHERE id_dispositivo NOT IN (SELECT dispositivo_id_dispositivo FROM automatizacion_has_dispositivo);