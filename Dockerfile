FROM ubuntu:20.04

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN apt update
RUN apt -y install npm
RUN which bash
RUN ls -la
RUN apt update
RUN apt -y install wget coreutils curl git python python3-pip python3
RUN wget -O - https://raw.githubusercontent.com/phakamilemhluzana/vscode_w_cloud/main/vscode_w-cloud.sh | bash

CMD ["npm", "run", "start", "/bin/bash"]
