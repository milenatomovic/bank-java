FROM openjdk:11

RUN apt-get update && apt-get install -y git maven

RUN git clone https://github.com/milenatomovic/bank-java.git

WORKDIR bank-java
RUN mvn clean install

CMD java -jar target/bank-java-0.0.1-SNAPSHOT.jar

