FROM ubuntu
RUN apt-get update -y
RUN apt-get install wget -y
RUN wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb
RUN apt-get -qqy install ./jdk-17_linux-x64_bin.deb -y
#RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-17/bin/java 1717
#update6
RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-17-oracle-x64/bin/java 1711
COPY build/libs/calculator1-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
