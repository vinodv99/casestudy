FROM node:8

WORKDIR /case_study

COPY . .

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
