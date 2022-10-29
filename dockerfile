FROM eclipse-temurin:17

# cd /opt/dockerapp
WORKDIR /opt/dockerapp

# Refer to Maven build -> finalName
ARG JAR_FILE=target/springbootdocker-0.0.1-SNAPSHOT.jar

# cp target/spring-boot-docker-0.0.1-SNAPSHOT.jar /opt/dockerapp/dockerapp.jar
COPY ${JAR_FILE} dockerapp.jar

# java -jar /opt/dockerapp/dockerapp.jar
ENTRYPOINT ["java","-jar","dockerapp.jar"]

## sudo docker build -t spring-boot-docker:1.0 .
## sudo docker run -d -p 8090:8089 -t spring-boot-docker:1.0
## sudo docker run -p 8090:8089 -t spring-boot-docker:1.0
## sudo docker run -p 80:8080 -t spring-boot-docker:1.0
## sudo docker run -p 443:8443 -t spring-boot-docker:1.0
## sudo docker image tag spring-boot-docker:1.0 ruhulmus/spring-boot-docker:1.0