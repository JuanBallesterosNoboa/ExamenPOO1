CREATE DATABASE Basededatosexamen;
GO

USE Basededatosexamen;
GO

CREATE TABLE Empleados (
    IdEmpleado INT IDENTITY PRIMARY KEY,
    Nombre VARCHAR(100),
    Puesto VARCHAR(100)
);

CREATE TABLE Proyectos (
    IdProyecto INT IDENTITY PRIMARY KEY,
    Nombre VARCHAR(100),
    FechaInicio DATE
);

CREATE TABLE Participaciones (
    IdParticipacion INT IDENTITY PRIMARY KEY,
    IdEmpleado INT,
    IdProyecto INT,
    Rol VARCHAR(100),
    FOREIGN KEY (IdEmpleado) REFERENCES Empleados(IdEmpleado),
    FOREIGN KEY (IdProyecto) REFERENCES Proyectos(IdProyecto)
);
