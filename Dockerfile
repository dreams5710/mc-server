FROM eclipse-temurin:11-jre

WORKDIR /app

COPY server/eaglercraft-server.jar .

EXPOSE 25565

CMD ["java", "-Xmx512M", "-jar", "eaglercraft-server.jar", "nogui"]
