FROM node:12
WORKDIR /usr/src/app
COPY . .
RUN npm i 
CMD ["npm", "start"]