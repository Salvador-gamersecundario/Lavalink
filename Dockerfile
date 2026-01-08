FROM ghcr.io/lavalink-devs/lavalink:4.0.8

# Copiamos la configuración que creamos arriba
COPY application.yml application.yml

# Forzamos a Java a no pasarse de los 512MB de RAM de Koyeb
ENV JAVA_TOOL_OPTIONS="-Xmx380m -Xms256m -XX:+UseSerialGC"

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "Lavalink.jar"]