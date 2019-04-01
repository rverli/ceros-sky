FROM node:8

LABEL com.ceros.company="ceros" \
      com.ceros.team="devops.team" \
      com.ceros.product="sky" \
      com.ceros.service="ceros-aky" \
      com.ceros.stage="dev" \
      com.ceros.maintainer.skype="rverli" \
      com.ceros.maintainer.email="renan@rverli.com.br"

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY ./package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Exposing app ports
EXPOSE 5000

CMD [ "npm", "start" ]