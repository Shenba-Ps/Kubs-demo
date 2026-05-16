# Stage 1: Build JAR
FROM eclipse-temurin:17-jdk-alpine AS builder
WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests

# Stage 2: Run JAR
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=builder /app/target/spring-eks-0.0.1-SNAPSHOT.jar springeksapp.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","springeksapp.jar"]
