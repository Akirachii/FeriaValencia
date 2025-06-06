create database fvc;
use fvc;
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT,
    correo VARCHAR(100) UNIQUE
);

CREATE TABLE Actividades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    fecha_ultima DATE
);

CREATE TABLE Invitados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT
);

CREATE TABLE Realiza (
    usuario_id INT,
    actividad_id INT,
    PRIMARY KEY (usuario_id, actividad_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (actividad_id) REFERENCES Actividades(id) ON DELETE CASCADE
);

CREATE TABLE Tiene (
    actividad_id INT,
    invitado_id INT,
    PRIMARY KEY (actividad_id, invitado_id),
    FOREIGN KEY (actividad_id) REFERENCES Actividades(id) ON DELETE CASCADE,
    FOREIGN KEY (invitado_id) REFERENCES Invitados(id) ON DELETE CASCADE
);