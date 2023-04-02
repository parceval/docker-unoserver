FROM eclipse-temurin:20-jdk-alpine
LABEL maintainer="Karsten Fuhrmann <parceval3000@gmail.com>"

RUN apk add libreoffice bash py3-pip && pip3 install unoserver

EXPOSE 8080

CMD /usr/bin/unoserver --port 8080  --interface 0.0.0.0