# kibotest
----------------------
Kibo Test Job Position

El resultado de la prueba está entregado en una configuración con contenedores docker y su archivo docker-compose para su puesta en funcionamiento. 
La instalación de los contenedores volcará automatica la base de datos mysql de wordpress.
Para el frontend se ha utilizado ha desarrollado una web app en Angular conectada con un Wordpress a través de su API.


Procedimiento

1.- Instalación de docker

/docker-compose up --build -d

1.a.- Base de datos, incluida en /bin/mysql/database.sql

1.b.- PhpMyAdmin, se ha instalado un contenedor con una instancia de PhpMyAdmin en http://localhost:8080 (usuario:root y password:root)

1.c.- Redis, se ha instalado una instancia de redis(cache en memoria) en un contenedor docker, para su posterior uso con cualquier plugin de cache de objetos de Wordpress.


2.- Ultima versión compilada del front en Angular
/www/build
http://localhost/build

2.a.- Angular, el proyecto de angular se encuentra ubicado en /kibo-front


3.- Instalación de wordpress 
/www/app/wp-admin

http://localhost/app/wp-admin

usuario : root

password : root


4.- Administración de contenidos
Para la administración de contenidos se ha creado un tipo de post personalizado llamado Home, se podrá encontrar en el sidebar de CMS wordpress y un item llamado MyAdmin.

Se ha utilizado ACFPro para crear los campos personalizados necesarios para el frontend, todos están vinculados al tipo de contenido personalizado home.

Se ha creado un endpoint para obtener el menú desde la API.

Se ha dejado instalada el plugin Redis Object Cache para conectar la instancia de wordpress con nuestro contenedor redis.



Nota : Por la falta de tiempo me ha sido imposible realizar la maquetación mobile, así como el resultado final de la maquetación no es lo más optima que me hubiese gustado, poniendo prioridad a la arquitectura del frontend, el uso de contenedores y usar wordpress como api.


Finalmente de las 48 horas disponibles para realizar la prueba, por encontrarme en un pico de producción actualmente en mi trabajo, no he podido dedicar más de 10 horas en total. 


Muchas gracias.
