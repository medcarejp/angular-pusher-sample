FROM node:12.18
ENV LANG C.UTF-8

RUN npm install -g @angular/cli && ng config -g cli.packageManager yarn

RUN apt-get update -qq && apt-get install -y vim

RUN mkdir /myapp
WORKDIR /myapp

EXPOSE 4200

# docker run -it --hostname dockerangular --name docker-angular -v $PWD:/myapp -p 4200:4200 angular-pusher-sample/latest bash
