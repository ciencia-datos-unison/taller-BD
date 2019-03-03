---
layout: default
---

# Como instalar y probar Docker

### 1. Instalar la versión estable de Docker Community Edition (CE)

Para instalar docker vas a requerir darte de alta. No te preocupes,
solamente es para abrir un espacio donde puedas publicar y compartir
tus imágenes cuando generes algunas. Para la instalación te pide que le
des acceso como administrador (algo típico en este tipo de
instalaciones).

- Si tienes Mac:
  [https://docs.docker.com/docker-for-mac/install/](https://docs.docker.com/docker-for-mac/install/)

- Si tienes Ubuntu:
[https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)
(puedes buscar aquí para otras distribuciones de Linux).

- Si tienes Windows (64bit Windows 10 Pro, Enterprise o Education):
[https://docs.docker.com/docker-for-windows/install/](https://docs.docker.com/docker-for-windows/install/)

- Si tienes una versión viejita de Windows:
[https://docs.docker.com/toolbox/toolbox_install_windows/](https://docs.docker.com/toolbox/toolbox_install_windows/)

Sólo sigue las instrucciones. Una vez instalado vamos a probar que la
instalación se hizo correctamente. Para esto hay que abrir la
aplicación de terminal favorita que tengas (en Windows viene en el
menú de docker).

### 2. Probar la instalación de docker


Vamos a preguntar primero por la versión de docker

```sh
$ docker --version
```

y si nos devuelve algo como

```
Docker version 18.03.0-ce, build 0520e24
```

entonces estamos listos para cargar una imagen, aunque sea
pequeña. Vamos a cargar la imagen de prueba con el comando:

```sh
$ docker pull hello-world
```

Y carga una imagen que se usa para probar la instalación. Si la imagen
se cargo bien entonces se puede crear un contenedor al ejecutar la imagen

```sh
$ docker run hello-world
```

Ahora vamos a cargar una imagen que tenga sentido, por ejemplo una
distribución mínima de linux con nada instalado (esta es una base
bastante normal para construir imágenes más complejas).

```sh
$ docker pull ubuntu
```
 y vamos a ejecutarla en *modo interactivo* (con el fin que tengamos acceso a la terminal).

```sh
$ docker run -it --name mi_ubuntu ubuntu:latest
```

Acabamos de crear un contenedor llamado `mi_ubuntu`, basado en la
imagen `ubuntu:latest` y la cual opera en forma interactiva con una
terminal (`-it`). Para salir de la sesión en tu nueva máquina virtual
simplemente utiliza en la sesión `Ctrl-d` que es el comando clásico.

El contenedor seguirá existiendo y todo lo que se modificó
internamente (y los archivos que se creen dentro) seguirán
existiendo. Para regresar a tu contenedor sólo tienes que teclear el
comando

```sh
$ docker start -i mi_ubuntu
```

Podemos revisar las imagenes que tenemos con
```sh
$ docker image ls
```

así como los contenedores que se encuentran activos en el momento

```sh
$ docker container ls
```

y todos los contenedores

```sh
$ docker container ls -a
```

Por último, se pueden borrar los contenedores y las imágenes que ya no
estemos utilizando, primero los contenedores que tienen dependencia y
luego las imágenes. Por ejemplo, para borrar el contenedor, y la
imagen de `ubuntu` hay que teclear

```sh
$ docker container rm mi_ubuntu
$ docker image rm ubuntu:latest
```

Si no te deja borrar la imagen, entonces revisa si hay otros
contenedores que dependan de la imagen. Cuando no queden contenedores
ligados a la imagen, entonces la puedes borrar.

