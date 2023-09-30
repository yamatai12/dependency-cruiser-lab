FROM node:lts-bullseye
RUN apt-get update && apt-get install -y graphviz
WORKDIR /app