INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('ADMIN', 'ADMIN',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DECANO', 'DECANO',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('SECRETARIA', 'SECRETARIA',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('COORDINADOR CARRERA', 'COORDINADOR CARRERA',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('TITULACION', 'TITULACION',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('INVESTIGACION', 'INVESTIGACION',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('VINCULACION', 'VINCULACION',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DIRECTOR', 'DIRECTOR',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DOCENTE', 'DOCENTE',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DOCENTE_PLAN', 'DOCENTE_PLAN',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DOCENTE_PREAPROBADOR', 'DOCENTE_PREAPROBADOR',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DOCENTE_APROBADOR', 'DOCENTE_APROBADOR',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DOCENTE_CALIFICADOR', 'DOCENTE_CALIFICADOR',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DOCENTE_COM_INVESTIGACION', 'DOCENTE_COM_INVESTIGACION',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DOCENTE_COM_VINCULACION', 'DOCENTE_COM_VINCULACION',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DOCENTE_COM_SEGUIMIENTO', 'DOCENTE_COM_SEGUIMIENTO',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('TUTOR_VINCULACION', 'TUTOR_VINCULACION',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('DIRECTOR_VINCULACION', 'DIRECTOR_VINCULACION',1);
INSERT INTO `saac`.`rol`(`rol_nombre`, `rol_descripcion`, `rol_estado`) VALUES('ESTUDIANTE', 'ESTUDIANTE',1);

INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1711581163','Juan Carlos','Lafuente Muñoz','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27);
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('lmjc28627', 'jclafuente', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1711581163));
-- INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
-- VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='ADMIN'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DECANO'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='SECRETARIA'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='COORDINADOR CARRERA'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='TITULACION'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='INVESTIGACION'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='VINCULACION'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DIRECTOR'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DOCENTE'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='ESTUDIANTE'));

INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DOCENTE_PLAN'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DOCENTE_PREAPROBADOR'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DOCENTE_APROBADOR'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DOCENTE_CALIFICADOR'));

INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DOCENTE_COM_INVESTIGACION'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DOCENTE_COM_VINCULACION'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DOCENTE_COM_SEGUIMIENTO'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='TUTOR_VINCULACION'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='jclafuente'), (select rol_codigo from rol where rol_nombre='DIRECTOR_VINCULACION'));

INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1000000000','Admin','Test','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27 );
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('admin', 'admin', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1000000000));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='admin'), (select rol_codigo from rol where rol_nombre='ADMIN'));

INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1000000001','Decano','Test','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27 );
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('decano', 'decano', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1000000001));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='decano'), (select rol_codigo from rol where rol_nombre='DECANO'));

INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1000000002','Secretaria','Test','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27 );
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('secretaria', 'secretaria', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1000000002));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='secretaria'), (select rol_codigo from rol where rol_nombre='SECRETARIA'));

INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1000000003','Coord Carrera','Test','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27 );
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('coordcarrera', 'coordcarrera', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1000000003));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='coordcarrera'), (select rol_codigo from rol where rol_nombre='COORDINADOR CARRERA'));

INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1000000004','Titulacion','Test','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27 );
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('titulacion', 'titulacion', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1000000004));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='titulacion'), (select rol_codigo from rol where rol_nombre='TITULACION'));

INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1000000005','Director','Test','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27 );
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('investigacion', 'investigacion', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1000000005));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='investigacion'), (select rol_codigo from rol where rol_nombre='INVESTIGACION'));

INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1000000006','Vinculacion','Test','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27 );
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('vinculacion', 'vinculacion', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1000000006));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='vinculacion'), (select rol_codigo from rol where rol_nombre='VINCULACION'));

INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1000000008','Director','Test','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27 );
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('director', 'director', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1000000008));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='director'), (select rol_codigo from rol where rol_nombre='DIRECTOR'));

INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1000000009','Docente','Test','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27 );
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('docente', 'docente', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1000000009));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='docente'), (select rol_codigo from rol where rol_nombre='DOCENTE'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='docente'), (select rol_codigo from rol where rol_nombre='DOCENTE_PLAN'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='docente'), (select rol_codigo from rol where rol_nombre='DOCENTE_PREAPROBADOR'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='docente'), (select rol_codigo from rol where rol_nombre='DOCENTE_APROBADOR'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='docente'), (select rol_codigo from rol where rol_nombre='DOCENTE_CALIFICADOR'));

INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='docente'), (select rol_codigo from rol where rol_nombre='DIRECTOR'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='docente'), (select rol_codigo from rol where rol_nombre='DOCENTE_COM_INVESTIGACION'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='docente'), (select rol_codigo from rol where rol_nombre='DOCENTE_COM_VINCULACION'));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='docente'), (select rol_codigo from rol where rol_nombre='TUTOR_VINCULACION'));


INSERT INTO `saac`.`persona` (`per_documento_identidad`,`per_nombre`,`per_apellido`,`per_fecha_nacimiento`,`per_direccion`,`per_telfono_fijo`,`per_telefono_movil`,`per_email`,`per_fecha_registro`,`per_estado`,`catalogo_genero`,`catalogo_estado_civil`,`catalogo_nacionalidad`)
VALUES('1000000010','Estudiante','Test','1985-1-4','Buenos Aires y Estados Unidos','022238170','095635575','juanparsero@hotmail.com','2012-5-18 10:15:24.0',	1,98,87,27 );
INSERT INTO `saac`.`usuario`(`usu_ute_login`, `usu_user_name`, `usu_fch_registro`, `usu_estado`, `persona`)
VALUES('estudiante', 'estudiante', '2012-05-08 00:00:00.0', 1, (select per_codigo from persona where per_documento_identidad=1000000010));
INSERT INTO `saac`.`usuario_rol`(`usuario`, `rol`) 
VALUES((select usu_codigo from usuario where usu_user_name='estudiante'), (select rol_codigo from rol where rol_nombre='ESTUDIANTE'));

INSERT INTO `saac`.`facultad`(`fac_nombre`, `fac_estado`) VALUES('Facultad de Ciencias de la Ingeniería', 1);

INSERT INTO `saac`.`carrera`(`car_nombre`, `car_descripcion`, `car_estado`, `facultad`)
VALUES('Ing. Informática y Ciencias de la Computación', 'Ing. Informática y Ciencias de la Computación', 1, (SELECT fac_CODIGO FROM facultad WHERE fac_nombre='Facultad de Ciencias de la Ingeniería'));
INSERT INTO `saac`.`carrera`(`car_nombre`, `car_descripcion`, `car_estado`, `facultad`)
VALUES('Ing. Mecatrónica', 'Ing. Mecatrónica', 1, (SELECT fac_CODIGO FROM facultad WHERE fac_nombre='Facultad de Ciencias de la Ingeniería'));
INSERT INTO `saac`.`carrera`(`car_nombre`, `car_descripcion`, `car_estado`, `facultad`)
VALUES('Ing. de Petróleos', 'Ing. de Petróleos', 1, (SELECT fac_CODIGO FROM facultad WHERE fac_nombre='Facultad de Ciencias de la Ingeniería'));
INSERT INTO `saac`.`carrera`(`car_nombre`, `car_descripcion`, `car_estado`, `facultad`)
VALUES('Ing. de Alimentos', 'Ing. de Alimentos', 1, (SELECT fac_CODIGO FROM facultad WHERE fac_nombre='Facultad de Ciencias de la Ingeniería'));
INSERT INTO `saac`.`carrera`(`car_nombre`, `car_descripcion`, `car_estado`, `facultad`)
VALUES('Ing. Industrial y de Procesos', 'Ing. Industrial y de Procesos', 1, (SELECT fac_CODIGO FROM facultad WHERE fac_nombre='Facultad de Ciencias de la Ingeniería'));
INSERT INTO `saac`.`carrera`(`car_nombre`, `car_descripcion`, `car_estado`, `facultad`)
VALUES('Ing. Automotriz', 'Ing. Automotriz', 1, (SELECT fac_CODIGO FROM facultad WHERE fac_nombre='Facultad de Ciencias de la Ingeniería'));
INSERT INTO `saac`.`carrera`(`car_nombre`, `car_descripcion`, `car_estado`, `facultad`)
VALUES('Ing. Ambiental y Manejo de Riesgos Naturales', 'Ing. Ambiental y Manejo de Riesgos Naturales', 1, (SELECT fac_CODIGO FROM facultad WHERE fac_nombre='Facultad de Ciencias de la Ingeniería'));
INSERT INTO `saac`.`carrera`(`car_nombre`, `car_descripcion`, `car_estado`, `facultad`)
VALUES('Tecnología de Petróleos', 'Tecnología de Petróleos', 1, (SELECT fac_CODIGO FROM facultad WHERE fac_nombre='Facultad de Ciencias de la Ingeniería'));

INSERT INTO cargo(crg_nombre, crg_descripcion, crg_estado) VALUES('Docente', 'Docente', 1);
INSERT INTO cargo(crg_nombre, crg_descripcion, crg_estado) VALUES('Estudiante', 'Estudiante', 1);
INSERT INTO cargo(crg_nombre, crg_descripcion, crg_estado) VALUES('Decano', 'Decano', 1);
INSERT INTO cargo(crg_nombre, crg_descripcion, crg_estado) VALUES('Secretaria', 'Secretaria', 1);