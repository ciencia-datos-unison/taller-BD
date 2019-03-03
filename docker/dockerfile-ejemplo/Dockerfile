# Inicia seleccionando la imagen de base
FROM jupyter/scipy-notebook

# Copia los archivos de configuracion en el directorio del usuario
COPY .vimrc /home/$NB_USER

# Instala software de Linux que nos son utiles o deseables
USER root
RUN  apt-get -y update && \
     apt-get install -yq curl vim

# Para hacer presentaciones en jupyter con RISE
USER $NB_USER
RUN  conda install -c damianavila82 rise
