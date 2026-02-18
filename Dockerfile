FROM maven:3.9.12-amazoncorretto-21-al2023 AS build

WORKDIR /app

COPY . . 

RUN mvn clean package -DskipTests

FROM amazoncorretto:21-alpine 

WORKDIR /app 

COPY --from=build /app/target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

EXPOSE 9966