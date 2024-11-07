# Use an official OpenJDK runtime as a parent
FROM openjdk:24-oraclelinux8
ADD target/demo-0.0.1-SNAPSHOT.jar demo.jar
ENTRYPOINT ["java", "-jar", "/demo.jar"]
