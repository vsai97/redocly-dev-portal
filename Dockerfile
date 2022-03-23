# pull the base image
FROM node:14

# set the working direction
WORKDIR /app

# install app dependencies
COPY package*.json /app

COPY yarn.lock /app

RUN yarn install

COPY . /app

EXPOSE 3000

CMD ["yarn" , "start", "-H", "0.0.0.0", "-p", "3000"]
