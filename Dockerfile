# Start with a base Java image
FROM openjdk:17-jdk-alpine

# Make port 8081 available 
EXPOSE 8081

ADD target/automate-0.0.1-SNAPSHOT.jar automate-0.0.1-SNAPSHOT.jar

# Execute the jar upon container startup 
ENTRYPOINT ["java", "-jar", "/automate-0.0.1-SNAPSHOT.jar"]