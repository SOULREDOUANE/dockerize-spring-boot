# # Start with a base Java image
# FROM openjdk:17-jdk-alpine

# # Make port 8081 available 
# EXPOSE 8081

# ADD target/automate-0.0.1-SNAPSHOT.jar automate-0.0.1-SNAPSHOT.jar

# # Execute the jar upon container startup 
# ENTRYPOINT ["java", "-jar", "/automate-0.0.1-SNAPSHOT.jar"]

# Use Java 17 as the base image
FROM openjdk:17-jdk-alpine


# Set working directory
WORKDIR /app

# Copy the JAR file from the target directory
# The * ensures it will get the JAR regardless of the name
COPY target/*.jar app.jar

# Expose the port your application runs on
# Update this port number to match your application's port
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java","-jar","app.jar"]
