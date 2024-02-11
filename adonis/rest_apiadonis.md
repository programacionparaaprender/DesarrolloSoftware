
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
>- adonis new rest-api


### 7. Estructura de AdonisJS