# define node v14 as base docker image
FROM node:14-alpine

# set /app as working directory inside the container
WORKDIR /app

# copy current local directory to working directory in the container
COPY . .

# set NODE_ENV and DB_HOST as environtment variable for the apps
ENV NODE_ENV=production DB_HOST=item-db

# run command to install node package and build the apps
RUN npm install --production --unsafe-perm && npm run build

# expose to port 8080
EXPOSE 8080

# running the command to start the apps
CMD ["npm", "start"]
