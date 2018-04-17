FROM openjdk:8-jdk-alpine
MAINTAINER kc <kcwebapply@gmail.com>
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} batch-0.0.1-docker-info.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/batch-0.0.1-docker-info.jar"]