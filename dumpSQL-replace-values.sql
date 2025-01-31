
#Alumnos
ALTER TABLE `alumnos` CHANGE `ID_ALUMNO` `id` INT(11) NOT NULL AUTO_INCREMENT; 
ALTER TABLE `alumnos` CHANGE `DNI` `dni` INTEGER NOT NULL; 
ALTER TABLE `alumnos` CHANGE `NOMBRE` `nombre` VARCHAR(30) NOT NULL; 
ALTER TABLE `alumnos` CHANGE `APELLIDO` `apellido` VARCHAR(30) NOT NULL; 
ALTER TABLE `alumnos` CHANGE `FECHA_DE_NACIMIENTO` `fecha_nacimiento` DATETIME; 
ALTER TABLE `alumnos` CHANGE `CIUDAD` `ciudad` VARCHAR(30); 
ALTER TABLE `alumnos` CHANGE `CALLE` `calle` VARCHAR(30); 
ALTER TABLE `alumnos` CHANGE `CASANUMERO` `casa_numero` INTEGER; 
ALTER TABLE `alumnos` CHANGE `DPTO` `dpto` VARCHAR(5); 
ALTER TABLE `alumnos` CHANGE `PISO` `piso` TINYINT(3) UNSIGNED; 
ALTER TABLE `alumnos` CHANGE `ESTADO_CIVIL` `estado_civil`  TINYINT(3) UNSIGNED; 
ALTER TABLE `alumnos` CHANGE `CORREO` `email`  VARCHAR(50); 
ALTER TABLE `alumnos` CHANGE `TITULO_ANTERIOR` `titulo_anterior` LONGTEXT; 
ALTER TABLE `alumnos` CHANGE `BECAS` `becas` TINYINT(3) UNSIGNED; 
ALTER TABLE `alumnos` CHANGE `OBSERVACIONES` `observaciones` LONGTEXT; 
ALTER TABLE `alumnos` CHANGE `TELEFONO1` `telefono1` DECIMAL(18,0) DEFAULT 0;
ALTER TABLE `alumnos` CHANGE `TELEFONO2` `telefono2` DECIMAL(18,0) DEFAULT 0;
ALTER TABLE `alumnos` CHANGE `TELEFONO3` `telefono3` DECIMAL(18,0) DEFAULT 0;
ALTER TABLE `alumnos` CHANGE `CODIGOPOSTAL` `codigo_postal` VARCHAR(10);
  
#Asignaturas
ALTER TABLE `asignaturas` CHANGE `ID_ASIGNATURA` `id` INTEGER NOT NULL AUTO_INCREMENT;
ALTER TABLE `asignaturas` CHANGE `ID_CARRERA` `id_carrera` INTEGER NOT NULL;
ALTER TABLE `asignaturas` CHANGE `NOMBRE` `nombre` VARCHAR(50) NOT NULL;
ALTER TABLE `asignaturas` CHANGE `TIPO_MODULO` `tipo_modulo` TINYINT(3) UNSIGNED;
ALTER TABLE `asignaturas` CHANGE `CARGA_HORARIA` `carga_horaria` INTEGER NOT NULL;
ALTER TABLE `asignaturas` CHANGE `ANO` `anio` TINYINT(3) UNSIGNED NOT NULL;
ALTER TABLE `asignaturas` CHANGE `OBSERVACIONES` `observaciones` LONGTEXT;

#Correlatividades
ALTER TABLE `correlatividades` CHANGE `ID_CORRELATIVIDAD` `id` INTEGER NOT NULL AUTO_INCREMENT;
ALTER TABLE `correlatividades` CHANGE `ID_ASIGNATURA` `id_asignatura` INTEGER NOT NULL;
ALTER TABLE `correlatividades` CHANGE `ASIGNATURA_CORRELATIVA` `asignatura_correlativa` INTEGER NOT NULL;

#Cursada
ALTER TABLE `cursada` CHANGE `ID_CURSADA` `id` INTEGER NOT NULL AUTO_INCREMENT;
ALTER TABLE `cursada` CHANGE `ID_ASIGNATURA` `id_asignatura` INTEGER NOT NULL;
ALTER TABLE `cursada` CHANGE `ID_ALUMNO` `id_alumno` INTEGER NOT NULL;
ALTER TABLE `cursada` CHANGE `ANO_CURSADA` `anio_cursada` INTEGER;
ALTER TABLE `cursada` CHANGE `CONDICION` `condicion` TINYINT(3) UNSIGNED NOT NULL;
ALTER TABLE `cursada` CHANGE `APROBADA` `aprobada` TINYINT(3) UNSIGNED;

#egresado inscripto
ALTER TABLE `egresadoinscripto` CHANGE `ID_EGRESADO` `id` INT(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `egresadoinscripto` CHANGE `ID_ALUMNO` `id_alumno` INTEGER NOT NULL;
ALTER TABLE `egresadoinscripto` CHANGE `ID_CARRERA` `id_carrera` INTEGER NOT NULL;
ALTER TABLE `egresadoinscripto` CHANGE `ANO_DE_INSCRIPCION` `anio_inscripcion` INTEGER;
ALTER TABLE `egresadoinscripto` CHANGE `INDICE_LIBRO_MATRIZ` `indice_libro_matriz` VARCHAR(30);
ALTER TABLE `egresadoinscripto` CHANGE `ano_de_finalizacion` `anio_finalizacion` INTEGER;

#examenes
ALTER TABLE `examenes` CHANGE `ID_EXAMENES` `id` INTEGER NOT NULL AUTO_INCREMENT;
ALTER TABLE `examenes` CHANGE `ID_MESA` `id_mesa` INTEGER;
ALTER TABLE `examenes` CHANGE `ID_ALUMNO` `id_alumno` INTEGER;
ALTER TABLE `examenes` CHANGE `ID_ASIGNATURA` `id_asignatura` INTEGER;
ALTER TABLE `examenes` CHANGE `APROBADO` `aprobado` TINYINT(3) UNSIGNED;
ALTER TABLE `examenes` CHANGE `NOTA` `nota` DECIMAL(18,2) DEFAULT 0;
ALTER TABLE `examenes` CHANGE `TIPOFINAL` `tipo_final` TINYINT(3) UNSIGNED;
ALTER TABLE `examenes` CHANGE `LLAMADO` `llamado` TINYINT(3) UNSIGNED;
ALTER TABLE `examenes` CHANGE `LIBRO` `libro` TINYINT(3) UNSIGNED;
ALTER TABLE `examenes` CHANGE `ACTA` `acta` TINYINT(3) UNSIGNED;
ALTER TABLE `examenes` CHANGE `FECHA` `fecha` DATETIME;
ALTER TABLE `examenes` CHANGE `EQUIVALENCIAS` `equivalencias` INTEGER;

#historial
ALTER TABLE `historial` CHANGE `ID_HISTORIA` `id` INTEGER NOT NULL AUTO_INCREMENT;
ALTER TABLE `historial` CHANGE `ID_PROFESOR` `id_profesor` INTEGER NOT NULL;
ALTER TABLE `historial` CHANGE `ID_CARRERA` `id_carrera` INTEGER;
ALTER TABLE `historial` CHANGE `ID_ASIGNATURA` `id_asignatura` INTEGER;
ALTER TABLE `historial` CHANGE `FECHA_INICIO` `fecha_inicio` DATETIME NOT NULL;
ALTER TABLE `historial` CHANGE `FECHA_FIN` `fecha_fin` DATETIME NOT NULL;
ALTER TABLE `historial` CHANGE `NOTA` `nota` DECIMAL(18,2) DEFAULT 0;
ALTER TABLE `historial` CHANGE `CONDICION` `condicion` TINYINT(3) UNSIGNED;
ALTER TABLE `historial` CHANGE `MANUAL` `manual` TINYINT(3) UNSIGNED;
ALTER TABLE `historial` CHANGE `TIPO_CARGO` `tipo_argo` VARCHAR(111);
ALTER TABLE `historial` CHANGE `SIT_REVISTA` `sit_revista` TINYINT(3) UNSIGNED;
ALTER TABLE `historial` CHANGE `HORAS` `horas` VARCHAR(6);

#mesa
ALTER TABLE `mesa` CHANGE `ID_MESA` `id` INTEGER NOT NULL AUTO_INCREMENT;
ALTER TABLE `mesa` CHANGE `ID_ASIGNATURA` `id_asignatura` INTEGER NOT NULL;
ALTER TABLE `mesa` CHANGE `ID_CARRERA` `id_carrera` INTEGER NOT NULL;
ALTER TABLE `mesa` CHANGE `PROF_PRESIDENTE` `prof_presidente` INTEGER NOT NULL;
ALTER TABLE `mesa` CHANGE `PROF_VOCAL1` `prof_vocal_1` INTEGER NOT NULL;
ALTER TABLE `mesa` CHANGE `PROF_VOCAL2` `prof_vocal_2` INTEGER;
ALTER TABLE `mesa` CHANGE `LLAMADO` `llamado` TINYINT(3) UNSIGNED NOT NULL;
ALTER TABLE `mesa` CHANGE `FECHA` `fecha` DATETIME NOT NULL;
ALTER TABLE `mesa` CHANGE `HORA` `hora` TINYINT(3) UNSIGNED;

# PROFESORES
ALTER TABLE `profesores` CHANGE `ID_PROFESORES` `id` INTEGER NOT NULL AUTO_INCREMENT;
ALTER TABLE `profesores` CHANGE `DNI` `dni` DECIMAL(18,0) NOT NULL DEFAULT 0;
ALTER TABLE `profesores` CHANGE `NOMBRE` `nombre` VARCHAR(30) NOT NULL;
ALTER TABLE `profesores` CHANGE `APELLIDO` `apellido` VARCHAR(30) NOT NULL;
ALTER TABLE `profesores` CHANGE `FECHA_DE_NACIMIENTO` `fecha_nacimiento` DATETIME;
ALTER TABLE `profesores` CHANGE `CIUDAD` `ciudad` VARCHAR(30);
ALTER TABLE `profesores` CHANGE `CALLE` `calle` VARCHAR(30);
ALTER TABLE `profesores` CHANGE `CASANUMERO` `casa_numero` INTEGER;
ALTER TABLE `profesores` CHANGE `DPTO` `dpto` VARCHAR(5);
ALTER TABLE `profesores` CHANGE `PISO` `piso` TINYINT(3) UNSIGNED;
ALTER TABLE `profesores` CHANGE `ESTADO_CIVIL` `estado_civil` TINYINT(3) UNSIGNED;
ALTER TABLE `profesores` CHANGE `CORREO` `email` VARCHAR(50);
ALTER TABLE `profesores` CHANGE `FORMACION_ACADEMICA` `formacion_academica` VARCHAR(200);
ALTER TABLE `profesores` CHANGE `TITULO` `titulo` TINYINT(3) UNSIGNED;
ALTER TABLE `profesores` CHANGE `ANO_DE_INGRESO` `anio_ingreso` INTEGER;
ALTER TABLE `profesores` CHANGE `OBSERVACIONES` `observaciones` LONGTEXT;
