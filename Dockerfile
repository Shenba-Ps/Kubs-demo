FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8080
COPY target/spring-eks-0.0.1-SNAPSHOT.jar springeksapp.jar
ENTRYPOINT ["java", "-jar", "springeksapp.jar"]