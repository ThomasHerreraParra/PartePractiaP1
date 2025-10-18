INSERT INTO ciudad (ciudad_id, nombre_ciudad, codigo_postal) VALUES
(1, 'Cali', '760001'),
(2, 'Bogotá', '110111'),
(3, 'Medellín', '050001'),
(4, 'Barranquilla', '080001'),
(5, 'Cartagena', '130001'),
(6, 'Bucaramanga', '680001'),
(7, 'Pereira', '660001'),
(8, 'Cúcuta', '540001'),
(9, 'Ibagué', '730001'),
(10, 'Manizales', '170001');

INSERT INTO usuario_type (id, nombre_tipo) VALUES
(1, 'Cliente'),
(2, 'Empleado'),
(3, 'Proveedor'),
(4, 'Administrador'),
(5, 'Invitado'),
(6, 'Soporte Técnico'),
(7, 'Supervisor General'),
(8, 'Asociado'),
(9, 'Consultor Externo'),
(10, 'Contratista');

INSERT INTO usuario (usuario_id, nombre, apellido, id_tipo_usuario, condicion_especial, ciudad_id) VALUES
(100, 'Laura', 'Gómez', 1, 'Ninguna', 1),
(101, 'Carlos', 'Mora', 2, 'Ninguna', 1),
(102, 'María', 'Suárez', 3, 'Silla de ruedas', 2),
(103, 'José', 'Martínez', 1, 'Adulto mayor', 3),
(104, 'Andrés', 'Cruz', 2, 'Ninguna', 4),
(105, 'Paola', 'Vargas', 2, 'Embarazo', 1),
(106, 'Lucía', 'Herrera', 1, 'Ninguna', 5),
(107, 'David', 'Ruiz', 3, 'Ninguna', 6),
(108, 'Marta', 'Pineda', 1, 'Ninguna', 7),
(109, 'Raúl', 'Torres', 2, 'Ninguna', 8),
(110, 'Camilo', 'Rojas', 1, 'Adulto mayor', 9),
(111, 'Sandra', 'León', 3, 'Ninguna', 10),
(112, 'Felipe', 'Agudelo', 2, 'Ninguna', 1),
(113, 'Tatiana', 'Salazar', 1, 'Embarazo', 5);

-- solo los usuarios con tipo 2 (Empleado)
INSERT INTO empleado (usuario_id, cargo, departamento) VALUES
(101, 'Analista de Datos', 'Sistemas'),
(104, 'Técnico de Campo', 'Consultoría'),
(105, 'Recepcionista', 'Atención al público'),
(109, 'Supervisor de Logística', 'Despacho'),
(112, 'Mecánico Industrial', 'Mantenimiento'),
(113, 'Administrador General', 'Gerencia'),
(102, 'Gestor de Proveedores', 'Compras'),
(107, 'Coordinador de Mantenimiento', 'Operaciones'),
(108, 'Asistente de Soporte', 'Tecnología'),
(111, 'Gestor de Reclamos', 'Atención al cliente');

INSERT INTO servicio (servicio_id, nombre, descripcion, estado) VALUES
(10, 'Atención al Cliente', 'Soporte general y orientación al usuario', 'Activo'),
(11, 'Despacho', 'Entrega de productos y documentos', 'Activo'),
(12, 'Consultoría', 'Asesoramiento técnico especializado', 'Activo'),
(13, 'Recepción', 'Recepción y registro de artículos', 'Activo'),
(14, 'Mantenimiento', 'Revisión técnica de equipos', 'Activo'),
(15, 'Entrega', 'Distribución de documentos', 'Activo'),
(16, 'Reclamos', 'Gestión de quejas y reclamos', 'Activo'),
(17, 'Asesoría', 'Consejería comercial o técnica', 'Activo'),
(18, 'Instalación', 'Montaje e instalación de equipos', 'Activo'),
(19, 'Soporte Telefónico', 'Atención remota por llamadas o chat', 'Activo');

INSERT INTO medio (medio_id, tipo_medio, descripcion) VALUES
(1, 'Correo', 'correo@ejemplo.com'),
(2, 'Teléfono', '3001112233'),
(3, 'SMS', 'Mensaje de texto'),
(4, 'WhatsApp', 'Mensaje instantáneo'),
(5, 'Llamada', 'Contacto por voz'),
(6, 'Telegram', 'Mensaje instantáneo'),
(7, 'Facebook', 'Notificación en red social'),
(8, 'Instagram', 'Mensaje directo'),
(9, 'App Móvil', 'Notificación push'),
(10, 'Portal Web', 'Aviso en el sitio web');

INSERT INTO turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin) VALUES
(100, 10, 101, '2025-10-14', '08:00:00', '08:30:00'),
(103, 12, 104, '2025-10-14', '09:00:00', '09:30:00'),
(106, 11, 101, '2025-10-14', '09:30:00', '10:00:00'),
(107, 13, 104, '2025-10-14', '10:00:00', '10:30:00'),
(102, 11, 105, '2025-10-14', '11:00:00', '11:30:00'),
(108, 10, 109, '2025-10-14', '12:00:00', '12:30:00'),
(110, 14, 112, '2025-10-15', '08:00:00', '08:45:00'),
(111, 16, 113, '2025-10-15', '09:00:00', '09:30:00'),
(103, 18, 104, '2025-10-15', '09:30:00', '10:00:00'),
(106, 19, 105, '2025-10-15', '10:00:00', '10:30:00');

INSERT INTO notificacion (notificacion_id, usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 100, 1, 'Bienvenido al sistema de turnos', '2025-10-10', 'Enviado'),
(1, 100, 3, 'Bienvenido al sistema de turnos', '2025-10-10', 'Enviado'),
(2, 101, 2, 'Turno asignado correctamente', '2025-10-10', 'Enviado'),
(3, 102, 3, 'Turno programado', '2025-10-10', 'Enviado'),
(4, 103, 4, 'Recuerde su cita de hoy', '2025-10-11', 'Enviado'),
(5, 104, 5, 'Nuevo turno disponible', '2025-10-11', 'Enviado'),
(6, 105, 6, 'Notificación de turno', '2025-10-11', 'Pendiente'),
(7, 106, 7, 'Recordatorio de servicio', '2025-10-12', 'Enviado'),
(8, 107, 8, 'Turno actualizado', '2025-10-12', 'Enviado'),
(9, 108, 9, 'Cambio de horario', '2025-10-12', 'Pendiente'),
(10, 109, 10, 'Confirmación de asistencia', '2025-10-12', 'Enviado');
