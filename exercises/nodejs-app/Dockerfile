FROM node

WORKDIR /app

# the reason why copying package.json to /app and run npm install and then copy the rest of the content to /app was becasue docker caches actions
# if we change the other content of the file but package.json stays the same, then docker don't have to do go through npm install again
# it makes building the image more efficient
COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80

CMD ["node", "server.js"]