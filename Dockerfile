FROM openjdk:17-jdk-slim

ARG LOCAL_BUILD_JAR=/build/libs/project-0.0.1-SNAPSHOT.jar
ARG CONTAINER_BUILD_JAR=app.jar

WORKDIR /app
COPY $LOCAL_BUILD_JAR $CONTAINER_BUILD_JAR

EXPOSE 8080

CMD [ "java", "-jar", "app.jar"]