FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget -y
WORKDIR /opt/
RUN wget https://github.com/litecoincash-project/litecoincash/releases/download/v0.16.4/litecoincash-0.16.4-x86_64-linux-gnu.tar.gz
RUN tar zxvf litecoincash-0.16.4-x86_64-linux-gnu.tar.gz
RUN mv litecoincash-0.16.4/bin/* /usr/bin/
CMD /usr/bin/litecoincashd -printtoconsole
