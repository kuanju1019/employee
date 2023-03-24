FROM openjdk:8 as base

RUN apt update
RUN apt -y install maven

COPY ./target/employee-jdbc-0.0.1-SNAPSHOT.jar employee-jdbc-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","employee-jdbc-0.0.1-SNAPSHOT.jar"]