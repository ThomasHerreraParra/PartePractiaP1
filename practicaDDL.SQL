CREATE TABLE ciudad (
    ciudad_id INT PRIMARY KEY,
    nombre_ciudad VARCHAR(100),
    codigo_postal VARCHAR(10)
);

CREATE TABLE usuario_type (
    id INT PRIMARY KEY,
    nombre_tipo VARCHAR(100)
);

CREATE TABLE usuario (
    usuario_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    id_tipo_usuario INT,
    condicion_especial VARCHAR(100),
    ciudad_id INT,
    FOREIGN KEY (id_tipo_usuario) REFERENCES usuario_type(id),
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id)
);

CREATE TABLE empleado (
    usuario_id INT PRIMARY KEY,
    cargo VARCHAR(100),
    departamento VARCHAR(100),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE servicio (
    servicio_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    estado VARCHAR(50)
);

CREATE TABLE turno (
    usuario_id INT,
    servicio_id INT,
    empleado_id INT,
    fecha DATE,
    hora_inicio TIME,
    hora_fin TIME,
    PRIMARY KEY(usuario_id, servicio_id, empleado_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
    FOREIGN KEY (servicio_id) REFERENCES Servicio(servicio_id),
    FOREIGN KEY (empleado_id) REFERENCES Empleado(usuario_id)
);

CREATE TABLE medio (
    medio_id INT PRIMARY KEY,
    tipo_medio VARCHAR(50),
    texto VARCHAR(100),
);

CREATE TABLE notificacion (
    notificacion_id INT PRIMARY KEY,
    usuario_id INT,
    medio_id INT,
    mensaje VARCHAR(100),
    fecha_envio DATE,
    estado VARCHAR(50),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
    FOREIGN KEY (medio_id) REFERENCES Medio(medio_id)
);

--Docker run -it -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 postgres:14
--Docker run -p 5050:80 -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" dpage/pgadmin4
--Nombre: servilimar