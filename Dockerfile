FROM jelastic/maven:3.9.5-openjdk-21 AS build
WORKDIR /app

COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:21-jdk-slim 
COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/demo.jar"]
