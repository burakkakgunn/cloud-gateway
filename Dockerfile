FROM openjdk:17
LABEL authors="burakakgun"
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} cloud-gateway.jar
ENTRYPOINT ["java","-jar","/cloud-gateway.jar"]
EXPOSE 8060