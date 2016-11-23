FROM richtwert/docker-android

USER root

RUN wget -qO- https://nodejs.org/dist/v6.9.1/node-v6.9.1-linux-x64.tar.gz | tar xz -C /usr/local
RUN ln -s /usr/local/node-v6.9.1-linux-x64/bin/node /usr/local/bin/node
RUN ln -s /usr/local/node-v6.9.1-linux-x64/bin/npm /usr/local/bin/npm
ENV PATH $PATH:/usr/local/node-v6.9.1-linux-x64/bin
RUN npm install -g nativescript
