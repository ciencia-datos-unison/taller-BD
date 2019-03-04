# Basado en la imagen oficial de python 2.7
FROM python:2.7-slim

# Pone el directorio de trabajo en /app
WORKDIR /app

# Copia todo el contenido del directorio donde estamos en /app para la imagen
COPY . /app

# Instala los paquetes enlistados en requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Permite que el puerto 80 pudiera estar disponible fuera del contenedor
EXPOSE 80

# Define una variable de entorno (en este caso para la App)
ENV NAME World

# Ejecuta `python app.py` cuando arranque un contenedor basado en esta imagen
CMD ["python", "app.py"]