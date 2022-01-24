FROM eclipse-temurin:11.0.13_8-jdk
USER root

RUN groupadd --gid 1000 appuser \
    && useradd --uid 1000 --gid appuser --shell /bin/bash --create-home appuser

USER appuser

RUN  mkdir -p /home/appuser/.gradle/wrapper/dists \
    && mkdir -p /home/appuser/.gradle/wrapper/cache


EXPOSE 8080
EXPOSE 5005

#ENV GRAILS_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,address=*:5005,server=y,suspend=y"

