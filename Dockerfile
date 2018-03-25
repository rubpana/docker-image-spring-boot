FROM java:8
LABEL maintainer="Rubén Panadero"

EXPOSE 8080

ENV SPRING_BOOT_APP_JAR target/*.jar

ADD $SPRING_BOOT_APP_JAR /app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]
