docker run -it --rm --name my-maven-project -v /root/config:/root/config  -v /root/lib:/usr/share/maven/lib  -v /root/.m2:/root/.m2 -w   /root/config  maven:3 mvn clean install
