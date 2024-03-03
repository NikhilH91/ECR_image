FROM node:18

#create app directory
WORKDIR /usr/src/app

# install app dependencies
# A wildcard is used to ensure both  package.json AND json are copied
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

#Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node","server.js" ]
