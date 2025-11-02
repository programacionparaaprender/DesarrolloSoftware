
## Curso
>- https://www.udemy.com/course/curso-crea-una-rest-api-desde-cero-con-nodejs-y-adonisjs/

### Sección 1:

### 1. Introducción

### 2. Como utilizar la plataforma de Udemy

### 3. Como hacer tus preguntas correctamente

## Sección 2: ¿Que es una REST API?

### 4. ¿Que es una API REST?
#### API: Application Programming Interface (Interfaz de Programación de Aplicaciones).

#### REST: Representational State Transfer (Transferencia de Estado Representacional)
>- Es una forma de crear webs que sigue una arquitectura especifica.
>- Hay que seguir un standard o un conjunto de guías mediante los cuales podemos estructurar y crear API's
>- Las REST API's tienen propiedades fácilmente identificables

#### Propiedades REST

>- http://academiacoder.com/api/cursos/programacion 
>- "estudiantes":{"nombre":"Marcos", "apellido":"Guerrini", "edad": "35"}
>- GET - Utilizado para RECIBIR datos desde el servidor
>- POST - Utilizado para ENVIAR al servidor
>- PUT - Utilizado para ACTUALIZAR datos del servidor
>- DELETE - Utilizado para ELIMINAR datos del servidor

#### Utilizan Códigos de Estado HTTP:
>- 2xx - (200, 201, 202) Resultados correctos
>- 4xx - (403, 404) Errores del cliente
>- 5xx - (500, 501, 502) Errores del servidor


## Sección 3: Entrando en el mundo de AdonisJS

### 5. Herramientas necesarias
#### gestor de versiones de node, instalar una versión
>- nvm lista available
>- nvm ls
>- nvm install 12.22.12 x64
>- nvm ls
>- nvm use 12.22.12
>- nvm list


### 6. Instalando AdonisJS
>- https://docs.adonisjs.com/guides/installation
>- https://adonisjs.com/
>- npm i -g @adonisjs/cli
>- adonis new yardstick
>- cd yardstick
>- adonis serve --dev
>- adonis new rest-api --api-only


### 7. Estructura de AdonisJS
>- https://adonisjs.com/docs/6.1.3

## Sección 4: Rutas y Usuarios

### 8. Rutas
>- adonis make:controller User (seleccionamos http)
>- adonis make:controller Ejemplo --resource (seleccionamos http)

### 9. Creando usuarios
>- npm install sqlite3 --save
>- adonis migration:run
>- adonis migration:refresh

### 10. Login de Usuarios y JWT

### 11. Creando el modelo Proyecto
>- adonis make:model Proyecto -m
>- adonis make:model Tarea -m
>- adonis migration:run
>- adonis migration:refresh


### 12. Método Index
>- adonis make:controller Proyecto --resource (seleccionamos http)
>- https://legacy.adonisjs.com/docs/6.1.3/
>- https://docs.adonisjs.com/guides/sql
>- adonis make:model TarjetaCredito -m
>- adonis make:model Menu -m
>- adonis make:model Autor -m
>- adonis make:model Noticia -m
>- adonis migration:run
>- adonis migration:refresh
>- adonis make:controller Menu (seleccionamos http)
>- adonis make:controller Autor (seleccionamos http)
>- adonis make:controller Noticia (seleccionamos http)

### 13. Método Create

### 14. Método Destroy

### 15. Servicios y Excepciones
>- adonis make:exception AccesoProhibido
>- adonis make:exception RecursoNoEncontrado

### 16. Método Update

## Sección 6: Creando tareas

### 17. Creando el modelo Tareas
>- adonis make:controller Tarea (seleccionamos http)

### 18. Método Create para nuestras tareas
>- adonis migration:rollback
>- adonis migration:run
>- adonis migration:refresh

### 19. Listamos todas nuestras tareas

### 20. Clase Final, Actualizar y Eliminar tareas

## Sección 7: Despedida

### 21. Que hacer luego de tener nuestra REST API Finalizada

### 22. Gracias, continua aprendiendo pero empieza a crear YA!

