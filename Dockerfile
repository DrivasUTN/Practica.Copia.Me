# Usa una imagen de Java 17 como base
FROM openjdk:17-jdk-alpine

# Crea un directorio de trabajo para la aplicación
WORKDIR /app

# Copia el archivo jar de la aplicación en el directorio de trabajo
COPY target/*.jar /app/

# Especifica el comando para ejecutar la aplicación
CMD ["java", "-cp", ".:/app/*", "ar.utn.dds.copiame.CopiaMeApp"]
