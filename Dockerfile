# Use an OpenJDK 8 base image
FROM openjdk:8

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY ./target/*.jar app.jar

# Expose the port your application will run on
EXPOSE 8080

# Command to run the JAR file
CMD ["java", "-jar", "app.jar"]