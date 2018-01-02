FROM node:alpine

USER jenkins
WORKDIR /home/jenkins

CMD ["/bin/sh","-c","/bin/sh"]
