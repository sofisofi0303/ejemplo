CREATE TABLE Diagnostico_cognitivo (
   Id_Diagnostico INT PRIMARY KEY,
   nombre_patologia VARCHAR (50) NOT NULL,
   Fase_etapa VARCHAR (60),
   Fecha_diagnostico DATE
);

CREATE TABLE Adulto_mayor (
   Id_Adulto_mayor INT PRIMARY KEY,
   nombre VARCHAR(50) NOT NULL,
   apellidos VARCHAR(40) NOT NULL,
   cedula VARCHAR(70) NOT NULL,
   edad INT NOT NULL,
   telefono INT NOT NULL,
   direccion VARCHAR(60)
   );


  CREATE TABLE Padecer (
    Id_Adulto_mayor int,
    Id_Diagnostico int,
    FOREIGN KEY (Id_Adulto_mayor)REFERENCES Adulto_mayor(Id_Adulto_mayor),
    FOREIGN KEY (Id_Diagnostico)REFERENCES Diagnostico_cognitivo(Id_Diagnostico)
   );


  CREATE TABLE Familiar (
    Id_familiar INT PRIMARY KEY,
    Id_Adulto_mayor INT,
    apellidos VARCHAR(20) NOT NULL,
    cedula VARCHAR(20)NOT NULL,
    correo VARCHAR(40)NOT NULL,
    telefono INT NOT NULL,
    parentesco VARCHAR(40)NOT NULL,
    direccion VARCHAR(40)NOT NULL,
    FOREIGN KEY (Id_Adulto_mayor)REFERENCES Adulto_mayor(Id_Adulto_mayor)
    );


CREATE TABLE Hogar (
   Id_Hogar INT PRIMARY KEY,
   Id_Adulto_mayor INT,
   direccion VARCHAR(200) NOT NULL,
   municipio VARCHAR(20) NOT NULL,
   tipo_vivienda  VARCHAR(50) NOT NULL,
   FOREIGN KEY (Id_Adulto_mayor)REFERENCES Adulto_mayor(Id_Adulto_mayor)
   );
CREATE TABLE Alerta (
   Id_Alerta INT PRIMARY KEY,
   Id_Hogar INT NOT NULL,
   fecha_hora DATE NOT NULL,
   tipo_alerta VARCHAR(40),
   nivel_riesgo VARCHAR(40) NOT NULL,
   estado VARCHAR(40) NOT NULL,
   FOREIGN KEY (Id_Hogar)REFERENCES Hogar(Id_Hogar)
   );




