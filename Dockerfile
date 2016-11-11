FROM java:8

ADD target/gs-maven-0.1.0.jar /run
ADD run.sh /run/run.sh
 
WORKDIR /run

CMD /run/run.sh
 
