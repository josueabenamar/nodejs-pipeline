FROM node:8

USER jenkins
WORKDIR /home/jenkins

CMD ["/bin/sh","-c","/bin/sh"]
