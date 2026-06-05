FROM eclipse-temurin:21

WORKDIR /server

RUN apt update && apt install -y wget

RUN wget https://api.papermc.io/v2/projects/paper/versions/1.21.8/builds/45/downloads/paper-1.21.8-45.jar -O server.jar

COPY . .

EXPOSE 25565

CMD ["java", "-Xmx1G", "-Xms512M", "-jar", "server.jar", "nogui"]
