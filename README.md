#🎓 Proyecto de Migración de Base de Datos EDUCA a Business Central##🎯 Objetivo del ProyectoEl objetivo principal de este proyecto es la **migración de la Base de Datos (BD) existente EDUCA al software ERP Microsoft 365 Business Central**.

El centro educativo "Gregorio Fernández" busca integrar sus diferentes áreas funcionales, optimizar la relación con los alumnos (clientes), y obtener una ventaja competitiva en el mercado mediante el uso de un ERP.

##🏫 Centro de Enseñanza* 
**Nombre:** Centro de Enseñanza Concertada "Gregorio Fernández" 


* 
**Módulo:** SGE 


* 
**Curso:** 25-26 


* 
**Profesora:** Macarena Cuenca Carbajo 



##🛠️ Diseño de la Base de Datos (BD) EDUCALa BD `EDUCA` almacena información clave del centro, incluyendo cursos, clases, estudiantes, matrículas, profesorado (Claustro), departamentos, y personal no docente.

###Tablas PrincipalesLa BD consta de las siguientes siete tablas:

| Tabla | Descripción | Clave Principal |
| --- | --- | --- |
| **CURSOS** | Información sobre los cursos impartidos (nombre, créditos, tarifa). | <br>`Código curso` 

 |
| **DEPARTAMENTOS** | Información de las áreas departamentales y su ubicación. | <br>`Código dept.` 

 |
| **CLASES** | Detalles de las secciones de los cursos (día, hora, ubicación). | <br>`Código curso`, `Sección` 

 |
| **ESTUDIANTES** | Datos de los alumnos matriculados. | <br>`Código estudiante` 

 |
| **MATRÍCULAS** | Registros de las inscripciones de alumnos en clases. | <br>`Código curso`, `Sección`, `Código estudiante` 

 |
| **CLAUSTRO** | Información del profesorado (docentes). | <br>`Código profesor` 

 |
| **PERSONAL** | Información del personal no docente. | <br>`Código personal` 

 |

###🔗 Relaciones Esenciales (Extracto del Diagrama E-R)Las relaciones entre las tablas están definidas de la siguiente manera (las cardinalidades están indicadas en el diagrama adjunto):

* 
**CURSOS** \rightarrow **DEPARTAMENTOS** (1:n) 


* 
**CURSOS** \rightarrow **CLASES** (1:n) 


* 
**DEPARTAMENTOS** \rightarrow **CLAUSTRO** (1:n, con rol **DIRECTOR** 1:1) 


* 
**ESTUDIANTES** \rightarrow **CLAUSTRO** (0:n, con rol **TUTOR** 1:1) 


* 
**CLASES** \rightarrow **MATRÍCULAS** (1:n) 


* 
**ESTUDIANTES** \rightarrow **MATRÍCULAS** (1:n) 



##📝 Requisitos de Migración y Funcionalidades AdicionalesPara la implementación en Microsoft 365 Business Central, se deben considerar las siguientes modificaciones y campos calculados:

1. Campos Calculados y de Filtrado 

Se requiere modificar las tablas para mostrar información calculada automáticamente:

* 
**CLAUSTRO - Campo `Num. ayud.` (Número de Ayudantes):** Debe mostrar automáticamente el número de ayudantes que tiene asignado cada profesor. *Nota: Un ayudante, que tiene el `Cargo` de "Ayudante" en la tabla `PERSONAL`, solo está asignado a un único profesor*.


* **Acción Requerida:** Establecer una relación entre `PERSONAL` (Ayudantes) y `CLAUSTRO` (Profesores).


* 
**CLAUSTRO - Número de Clases Impartidas:** Se debe conocer el número de clases que imparte cada profesor.


* 
**Funcionalidad Adicional:** Permitir **filtrar** esta información por el día de la semana para conocer el número de clases impartidas un día concreto.


* 
**Acción Requerida:** Modificar las tablas implicadas (`CLAUSTRO` y `CLASES`).




* 
**DEPARTAMENTOS - Promedio de Tarifa de Laboratorio:** Almacenar el promedio de la tarifa de laboratorio (`Tarifa` de la tabla `CURSOS`) por cada departamento, en función de los cursos asignados a dicho departamento.



###2. Propiedades de CamposSe deben aplicar las siguientes validaciones y propiedades a los campos al crear las nuevas tablas:

| Tabla | Campo | Propiedades/Restricciones |
| --- | --- | --- |
| **CURSOS** | `Código curso` | Letra mayúscula, Requerido 

 |
|  | `Créditos` | Valor por defecto: 0 

 |
|  | `Tarifa` | Decimales: 2 

 |
| **DEPARTAMENTOS** | `Código dept.` | Letras mayúsculas, Requerido 

 |
|  | `Despacho` | Valor por defecto: 0, Positivo 

 |
| **ESTUDIANTES** | `Código estudiante` | Numérico, Requerido 

 |
|  | `Sexo` | Valores permitidos: (blanco), H, M 

 |
| **CLAUSTRO** | `Sueldo` | Decimales: 2, Valor positivo 

 |
| **PERSONAL** | `Sueldo` | Decimales: 2, Valor positivo 

 |

---
