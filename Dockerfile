FROM eclipse-temurin:21

WORKDIR /server

RUN apt update && apt install -y wget

RUN wget https://api.papermc.io/v2/projects/paper/versions/1.21.8/builds/20/downloads/paper-1.21.8-20.jar -O server.jar

COPY . .

CMD ["java", "-Xmx2G", "-Xms1G", "-jar", "server.jar", "nogui"]
