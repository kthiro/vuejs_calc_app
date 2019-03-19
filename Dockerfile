FROM node
RUN apt-get update
RUN apt-get -y install curl git apt-transport-https
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get -y install yarn
RUN yarn global add @vue/cli @vue/cli-service-global vue
RUN echo PATH="$PATH:~/.yarn/bin/" >> ~/.profile
RUN mkdir /vue_app
EXPOSE 8080
CMD ["/bin/bash"]
