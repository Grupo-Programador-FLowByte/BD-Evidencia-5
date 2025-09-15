CREATE TABLE Usuario (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  usuario VARCHAR(45) NOT NULL UNIQUE,
  clave VARCHAR(45) NOT NULL,
  rol VARCHAR(45) NOT NULL
);

CREATE TABLE Dispositivo (
  id_dispositivo INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  tipo VARCHAR(45) NOT NULL,
  estado VARCHAR(45) NOT NULL,
  id_usuario INT,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Automatizacion (
	id_automatizacion INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  funcionalidad VARCHAR(255) NOT NULL,
  estado VARCHAR(45) NOT NULL,
  id_usuario INT,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE automatizacion_has_dispositivo (
    automatizacion_id_automatizacion INT NOT NULL,
    dispositivo_id_dispositivo INT NOT NULL,
    PRIMARY KEY (automatizacion_id_automatizacion, dispositivo_id_dispositivo),
    FOREIGN KEY (automatizacion_id_automatizacion) REFERENCES Automatizacion(id_automatizacion),
    FOREIGN KEY (dispositivo_id_dispositivo) REFERENCES Dispositivo(id_dispositivo)
);