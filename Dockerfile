FROM openjdk:11-jre-slim

WORKDIR /app

COPY server/eaglercraft-server.jar .

EXPOSE 25565

CMD ["java", "-Xmx512M", "-jar", "eaglercraft-server.jar", "nogui"]
