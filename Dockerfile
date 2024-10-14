# Fase de construção usando Maven
FROM maven:3.8.5-amazoncorretto-17 AS build

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo pom.xml e o diretório src para o contêiner
COPY pom.xml .
COPY src ./src

# Executa o Maven para compilar o projeto e gerar o JAR
RUN mvn clean package -DskipTests

# Fase de execução usando Amazon Corretto
FROM amazoncorretto:17

# Copia o JAR construído da fase de build
COPY --from=build /app/target/backendjava-0.0.1-SNAPSHOT.jar /app/backend-java.jar

# Comando para executar a aplicação
CMD ["java", "-jar", "/app/backend-java.jar"]

# Expõe a porta 8080
EXPOSE 8080
