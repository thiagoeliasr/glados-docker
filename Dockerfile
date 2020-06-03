FROM ubuntu

MAINTAINER Thiago Elias "thiagoelias@thiagoelias.org"

# Update aptitude with new repo
RUN apt-get update

# Install software
RUN apt-get install -y git

# Installing python
RUN apt-get install -y python3-pip

RUN pip3 install python-telegram-bot
RUN pip3 install requests

RUN git clone https://github.com/thiagoeliasr/glados.git /root/glados

ADD entrypoint.sh /root/entrypoint.sh

RUN chmod 755 /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
