FROM openjdk:17-slim as builder
WORKDIR /app
COPY . .
ARG USERNAME
ARG TOKEN
ENV USERNAME=$USERNAME
ENV TOKEN=$TOKEN
RUN ./gradlew publish

# 이후 단계는 라이브러리가 배포용이기 때문에 불필요
