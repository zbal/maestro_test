FROM docker.wcl.local/devops/base
MAINTAINER vincent vincent@example.com

RUN apt-get install -y python-software-properties python
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

CMD [ '/usr/sbin/sshd', '-D' ]
