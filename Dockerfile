# Important commands Docker
#----------------------------
#docker build -f Dockerfile -t ProductService .
#docker images
#docker run -p 8080:8080 ProductService

#docker container ls
#docker rm <containerId>
#docker rmi <imageId>

# Start with a base image containing Java runtime
FROM java:8

# Make port 9095 available to the world outside this container
EXPOSE 4201

ADD target/ProductService-0.0.1-SNAPSHOT.jar ProductService-0.0.1-SNAPSHOT.jar

# Run the jar file 
ENTRYPOINT ["java","-jar","ProductService-0.0.1-SNAPSHOT.jar"]


