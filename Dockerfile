# Use an official JDK image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR from the host to the container
COPY target/java-hello-devops-1.0-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
