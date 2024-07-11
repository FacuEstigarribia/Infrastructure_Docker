# Use the JDK 11 base image
FROM openjdk:11-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the Carina-demo project files to the container
COPY . .

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Run the tests using Maven
CMD ["mvn", "clean", "test"]
