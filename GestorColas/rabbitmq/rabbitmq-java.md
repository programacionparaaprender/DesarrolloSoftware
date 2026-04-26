
## curso
>- https://www.udemy.com/course/rabbitmq-para-programadores-java/learn/lecture/22217016#overview

## Sección 1: Introducción

### 1. Qué es Rabbitmq

## Sección 2: Instalación de RabbitMQ

### 2. Instalación Windows - Gestor de paquetes

### 3. Instalación MacOS

## Sección 3: Empezando con RabbitMQ

### 4. Brókers de Mensajería
>- Publicadores a los Productores
>- Suscriptores a los Consumidores


### 5. AMQP y RabbitMQ
>- RabbitMQ fue unos de los primeros brokers de mensajes en implementar AMQP
>- AMQP (Advanced Message Queueing Protocol)
>- - Estandar y abierto
>- - Define un protocolo de comunicación.
>- - Define la interacción entre productor/consumidor y un broker
>- - Interoperabilidad.
>- RabbitMQ implementa por defecto AMQP 0-9-1. Soporta AMQP 1.0 mediante plugins.


### 6. Exchanges
>- Componentes de la especificación AMQP que reciben los mensajes enviados al bróker.
>- Redirigen mensajes hacia colas de mensajes en base a reglas de enrutamiento.
>- Pueden ser: 
>- - Durables o temporales
>- - Autodestruibles.

### 7. Direct Exchange


### 8. Fanout Exchange
>- Envían mensajes a todas las colas asociadas al exchange.
>- Ignoran el "routing-key": envío incondicional.
>- Algoritmo de enrutamiento:
>- - El exchange recibe un mensaje.
>- - Todas las colas asociadas al exchange reciven el mensaje.
>- Fanout exchange predefinido: "amq.fanout".


### 9. Topic Exchange


### 10. Headers Exchange


### 11. Queues


### 12. Bindings


### 13. Mensajes


## Sección 4: Programando RabbitMQ con Java


### 14. Instalación de Java & Intellij IDEA Community

### 15. Creación de un proyecto Java en IntelliJ y configuración de dependencias

### 16. Nuestro primer productor

### 17. Consumiendo nuestro primer mensaje

### 18. Notificando nuestro primer mensaje

### 19. Enrutado selectivo con el topic exchange

### 20. Cómo obtener el código

