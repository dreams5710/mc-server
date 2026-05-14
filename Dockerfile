FROM eclipse-temurin:11-jdk

WORKDIR /app

RUN apt-get update && apt-get install -y git maven && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/LAC1412/eaglercraftX-1.8.8-source.git . && \
    mvn clean package -DskipTests

EXPOSE 25565

CMD ["java", "-Xmx512M", "-jar", "target/eaglercraft-server.jar", "nogui"]
