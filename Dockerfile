FROM openjdk:8-jdk-alpine
COPY /build/libs/testcontinuos-0.0.1-SNAPSHOT.jar /home/testcontinuos-0.0.1-SNAPSHOT.jar
CMD java -jar  /home/testcontinuos-0.0.1-SNAPSHOT.jar