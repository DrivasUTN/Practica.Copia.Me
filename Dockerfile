# Usa una imagen de Java 17 como base
FROM arm64v8/openjdk:17

# Crea un directorio de trabajo para la aplicación
WORKDIR .

# Copia el archivo jar de la aplicación en el directorio de trabajo
COPY target/copiame-cli-0.0.1-SNAPSHOT.jar copiame-cli.jar

# Especifica el comando para ejecutar la aplicación
CMD ["java", "-cp", "copiame-cli.jar", "ar.utn.dds.copiame.CopiameBot"]

