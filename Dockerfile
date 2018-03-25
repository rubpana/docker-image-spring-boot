FROM java:8
LABEL maintainer="Rubén Panadero"
VOLUME /data
EXPOSE 8080

ENV SPRING_BOOT_APP_JAR target/*.jar

ENTRYPOINT ["/bin/bash", "-c", "java -jar /data/$SPRING_BOOT_APP_JAR"]