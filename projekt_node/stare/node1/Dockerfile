FROM node
RUN mkdir -p /home/node/app2/
WORKDIR /home/node/app2
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80
CMD ["node", "server.js"]
ENTRYPOINT npm start
