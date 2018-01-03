FROM node:8

RUN addgroup --gid 1001 jenkins
RUN adduser --uid 1001 --gid 1001 --create-home jenkins
USER jenkins
WORKDIR /home/jenkins

CMD ["/bin/sh","-c","/bin/sh"]
