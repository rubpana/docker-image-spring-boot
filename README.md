# docker-image-spring-boot
Docker image to launch spring boot applications packaged as JAR in docker containers

# How to run your Spring boot application
## Basic way
```
docker container run -d -p 8080:8080 -v /host/path/project:/data -e SPRING_BOOT_APP_JAR=[YOUR_JAR_PATH_INSIDE_VOLUME] --name [YOUR_APP_NAME] rubpana/spring-boot-app:0.1
```
If you don't set the environment variable `SPRING_BOOT_APP_JAR`, the container will look for a JAR inside the `target` folder (`target/*.jar`) of your volume.

## Alternative way (much easier and understandable)
It is also possible to run your container creating first your own Dockerfile from this image and then running your container from this new image.
```
FROM rubpana/spring-boot-app
COPY [YOUR_SPRING_BOOT_APP_JAR] /data/target/app.jar
```
Run this command at your Dockerfile level to build your custom docker image:
```
docker build -t own_spring_boot_app .
```
```
docker container run -d -p 8080:8080 --name [YOUR_APP_NAME] own_spring_boot_app
```