#FROM arm64v8/openjdk:17
FROM openjdk:17-jdk-alpine

# Crea un directorio de trabajo para la aplicación
WORKDIR .

# Copia el archivo jar de la aplicación en el directorio de trabajo
#RUN mvn clean package
COPY target/copiame-cli-0.0.1-SNAPSHOT.jar copiame-cli.jar
#CMD ["mvn","clean","package"]
# Especifica el comando para ejecutar la aplicación
#CMD ["java", "-cp", "copiame-cli.jar", "ar.utn.dds.copiame.CopiaMeApp"]
#CMD ["ar.utn.dds.copiame.CopiaMeBot"]
ENTRYPOINT ["java", "-jar", "copiame-cli.jar","--server.port=10000", "--server.address=0.0.0.0"]

