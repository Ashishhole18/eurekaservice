FROM openjdk:17-jdk-alpine
WORKDIR /app

COPY /target/discoveryservice-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8761
CMD ["java", "-jar", "app.jar"]