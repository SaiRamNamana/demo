# Use an official OpenJDK runtime as a parent
# Use Maven to build the application
FROM maven:3.8.1-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Create the actual image
FROM openjdk:11-jre
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar demo.jar
ENTRYPOINT ["java", "-jar", "/demo.jar"]
