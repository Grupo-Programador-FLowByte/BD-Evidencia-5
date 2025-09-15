# BD-Evidencia-5

Este repositorio contiene los scripts para crear y poblar la base de datos del proyecto **SmartHome Solutions**, correspondiente a la Evidencia 5. Se incluyen las tablas `Usuario`, `Dispositivo`, `Automatizacion` y la tabla intermedia `automatizacion_has_dispositivo`, representando la relación muchos a muchos entre automatizaciones y dispositivos.
El DBMS usado fue **MySQL** en [OneCompiler](https://onecompiler.com/sql)   

## Contenido de la carpeta

- `script_ddl.sql` → Scripts DDL para crear las tablas con sus relaciones.  
- `script_dml.sql` → Scripts DML para insertar datos de ejemplo y realizar consultas básicas.  
- `README.md` → Este archivo explicativo.

## Detalle de las tablas

### Usuario
- `id_usuario` (PK)  
- `nombre`  
- `usuario`  
- `clave`  
- `rol`  

### Dispositivo
- `id_dispositivo` (PK)  
- `nombre`  
- `tipo`  
- `estado`  
- `usuario_id_usuario` (FK → Usuario.id_usuario)  

### Automatizacion
- `id_automatizacion` (PK)  
- `nombre`  
- `funcionalidad`  
- `estado` (esencial / no esencial)  
- `usuario_id_usuario` (FK → Usuario.id_usuario)  

### Automatizacion_has_Dispositivo
- `automatizacion_id_automatizacion` (FK → Automatizacion.id_automatizacion)  
- `dispositivo_id_dispositivo` (FK → Dispositivo.id_dispositivo)  
- Representa la relación muchos a muchos entre automatizaciones y dispositivos.

## Ejecución de scripts probados

1. Se abrio un **DBMS online** compatible:  
   - [OneCompiler](https://onecompiler.com/sql)   

2. Se ejecuto primero `script_ddl.sql` para crear las tablas y relaciones.  
3. Se ejecuto luego `script_dml.sql` para insertar los datos de ejemplo y probar consultas.  
4. Consultar los resultados con los `SELECT` incluidos en los scripts.

> Nota: Los scripts están diseñados para funcionar en **MySQL**.

## Division de tareas

- **Franco** → Tabla `Usuario`  
- **Sergio** → Tabla `Dispositivo`  
- **Valentino** → Tabla `Automatizacion`  
- **Lucas** → Tabla intermedia `automatizacion_has_dispositivo`  
