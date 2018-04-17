FROM openjdk:8-jdk-alpine
MAINTAINER kc <kcwebapply@gmail.com>
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} ${jarname}.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/{jarname}.jar"]