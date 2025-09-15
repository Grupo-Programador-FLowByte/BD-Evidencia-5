-- Franco
-- Crear la tabla Usuario:
CREATE TABLE Usuario (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  usuario VARCHAR(45) NOT NULL UNIQUE,
  clave VARCHAR(45) NOT NULL,
  rol VARCHAR(45) NOT NULL
);

-- Sergio
-- Crear la tabla Dispositivo:
CREATE TABLE Dispositivo (
  id_dispositivo INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  tipo VARCHAR(45) NOT NULL,
  estado VARCHAR(45) NOT NULL,
  id_usuario INT,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Valentino
-- Crear la tabla Automatizacion:
CREATE TABLE Automatizacion (
	id_automatizacion INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  funcionalidad VARCHAR(45) NOT NULL,
  estado VARCHAR(45) NOT NULL,
  id_usuario INT,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

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