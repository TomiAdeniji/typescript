FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
#RUN npm install dd-trace --save
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "dist/server.js"]
