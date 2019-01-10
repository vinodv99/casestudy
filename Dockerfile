FROM node:8

WORKDIR /case_study

COPY . .

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
