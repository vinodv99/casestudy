#node base image
FROM node:8

#set working directory
WORKDIR /case_study

#copy the project code
COPY . .

#install required package for the project
RUN npm install

#application port used
EXPOSE 3000

#start the app
CMD [ "npm", "start" ]
