FROM openjdk:8-jre-alpine
ARG jar="target/eureka-0-1.0-SNAPSHOT.jar"
ARG appjar="/opt/app.jar"
VOLUME /tmp
COPY $jar $appjar
WORKDIR /opt
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=dev","-jar","/opt/app.jar"]