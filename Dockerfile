# Selecciona la imagen base según la arquitectura
# Arm64v8
FROM arm64v8/openjdk:17 AS arm64v8
# x86_64
FROM openjdk:17 AS x86_64

# Elige la imagen base según la arquitectura del sistema
FROM ${TARGETPLATFORM} AS base

# Crea un directorio de trabajo para la aplicación
WORKDIR .

# Copia el archivo jar de la aplicación en el directorio de trabajo
COPY target/copiame-cli-0.0.1-SNAPSHOT.jar copiame-cli.jar

# Especifica el comando para ejecutar la aplicación
CMD ["java", "-cp", "copiame-cli.jar", "ar.utn.dds.copiame.CopiameBot"]

