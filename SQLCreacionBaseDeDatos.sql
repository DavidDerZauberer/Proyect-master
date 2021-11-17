CREATE TABLE [dbo].[Documento] (
    [TipoDocumento] INT          NOT NULL,
    [Documento]     VARCHAR (30) NOT NULL,
    PRIMARY KEY CLUSTERED ([TipoDocumento] ASC)
);
CREATE TABLE [dbo].[Genero] (
    [Genero]     INT          NOT NULL,
    [TipoGenero] VARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([Genero] ASC)
);
CREATE TABLE [dbo].[ProgramaEstudiantil] (
    [Programa]     INT          NOT NULL,
    [tipoPrograma] VARCHAR (30) NOT NULL,
    PRIMARY KEY CLUSTERED ([Programa] ASC)
);
CREATE TABLE [dbo].[Rol] (
    [Rol]     INT          NOT NULL,
    [TipoRol] VARCHAR (30) NOT NULL,
    PRIMARY KEY CLUSTERED ([Rol] ASC)
);

CREATE TABLE [dbo].[UsuarioAdmin] (
    [ID]            INT           IDENTITY (1, 1) NOT NULL,
    [TipoDocumento] INT           NOT NULL,
    [Nombre]        VARCHAR (30)  NOT NULL,
    [Apellido]      VARCHAR (30)  NOT NULL,
    [Genero]        INT           NOT NULL,
    [Correo]        VARCHAR (50)  NOT NULL,
    [Rol]           INT           NOT NULL,
    [Usuario]       VARCHAR (30)  NOT NULL,
    [Contraseña]    VARCHAR (100) NOT NULL,
    [Programa]      INT           NOT NULL,
    [Documento]     VARCHAR (10)  NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([TipoDocumento]) REFERENCES [dbo].[Documento] ([TipoDocumento]),
    FOREIGN KEY ([Genero]) REFERENCES [dbo].[Genero] ([Genero]),
    FOREIGN KEY ([Rol]) REFERENCES [dbo].[Rol] ([Rol]),
    FOREIGN KEY ([Programa]) REFERENCES [dbo].[ProgramaEstudiantil] ([Programa])
);

CREATE TABLE [dbo].[TipoHomologacion]
(
	[IdHomologacion] INT NOT NULL PRIMARY KEY, 
    [TipoHomologacion] VARCHAR(30) NOT NULL
);
CREATE TABLE [dbo].[Programacion]
(
	[IdProgramacion] INT NOT NULL PRIMARY KEY, 
    [PeriodoAcademico] NCHAR(10) NOT NULL, 
    [Programa] INT NOT NULL FOREIGN KEY REFERENCES ProgramaEstudiantil(Programa), 
    [Fecha] DATE NOT NULL, 
    [Aula] INT NOT NULL, 
    [IdAsignatura] INT NOT NULL FOREIGN KEY REFERENCES Asignatura(IdAsignatura), 
    [ID] INT NOT NULL
);

CREATE TABLE [dbo].[Asignatura]
(
	[IdAsignatura] INT NOT NULL PRIMARY KEY, 
    [NombreAsignatura] VARCHAR(30) NOT NULL, 
    [Codigo] INT NOT NULL, 
    [Creditos] INT NOT NULL, 
    [nivel] NCHAR(10) NOT NULL, 
    [IdProgramacion] INT NOT NULL
);
CREATE TABLE [dbo].[Homologacion]
(
	[IdHomologacion] INT NOT NULL PRIMARY KEY, 
    [ID] INT NOT NULL FOREIGN KEY REFERENCES UsuarioAdmin(ID), 
    [Programa] INT NOT NULL FOREIGN KEY REFERENCES ProgramaEstudiantil(Programa), 
    [IdAsignatura] INT NOT NULL FOREIGN KEY REFERENCES Asignatura(IdAsignatura), 
    [CodigoHomologacion] INT NOT NULL, 
    [NotaDefinitiva] FLOAT NOT NULL
);


INSERT INTO Genero(Genero, TipoGenero)
VALUES (1,'Masculino');
INSERT INTO Genero(Genero, TipoGenero)
VALUES (2,'Femenino');
INSERT INTO Genero(Genero, TipoGenero)
VALUES (3,'Otro');
select * from Genero

INSERT INTO Documento(TipoDocumento,Documento)
VALUES (1,'Cedula Ciudadania');
INSERT INTO Documento(TipoDocumento,Documento)
VALUES (2,'Tarjeta Identidad');
INSERT INTO Documento(TipoDocumento,Documento)
VALUES (3,'Pasaporte');
select * from Documento

INSERT INTO Rol(Rol,TipoRol)
VALUES (1,'Administrador');
INSERT INTO Rol(Rol,TipoRol)
VALUES (2,'Estudiante');
INSERT INTO Rol(Rol,TipoRol)
VALUES (3,'Coordinador');

INSERT INTO TipoHomologacion(IdHomologacion,TipoHomologacion)
VALUES (1,'Transferencia Externa');
INSERT INTO TipoHomologacion(IdHomologacion,TipoHomologacion)
VALUES (2,'Transferencia Interna');
INSERT INTO TipoHomologacion(IdHomologacion,TipoHomologacion)
VALUES (3,'Nuevo');

INSERT INTO ProgramaEstudiantil(Programa,tipoPrograma)
VALUES (2,'Especializacion seguridad');
INSERT INTO ProgramaEstudiantil(Programa,tipoPrograma)
VALUES (3,'Maestria en gestion TI');
INSERT INTO ProgramaEstudiantil(Programa,tipoPrograma)
VALUES (4,'Maestria en Gestion Ambiental');



select * from Genero
select * from Rol
select * from TipoHomologacion
select * from Documento
select * from UsuarioAdmin
select * from ProgramaEstudiantil


alter table UsuarioAdmin alter Column Contraseña varchar(100); 
alter table UsuarioAdmin drop column Documento

drop table UsuarioAdmin;