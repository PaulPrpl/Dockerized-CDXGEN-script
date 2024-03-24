FROM debian:12.5
RUN apt -y update
RUN apt -y install npm wget
RUN npm install -g @cyclonedx/cdxgen
RUN cd /tmp
RUN wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
RUN apt -y install ./jdk-21_linux-x64_bin.deb
