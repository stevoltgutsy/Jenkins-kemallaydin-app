FROM node:10-alpine

RUN mkdir /app
COPY index.js /app
WORKDIR /app
RUN npm install express
EXPOSE 4444

CMD ["node", "index.js"]

RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-18.06.2-ce.tgz \
  && tar xzvf docker-18.06.2-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-18.06.2-ce.tgz
