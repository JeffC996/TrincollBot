# 1. base
FROM node:16.20.2

# 2. add some opeartions based on base
WORKDIR /app

COPY package.json ./ 
COPY app.js ./

RUN npm install

EXPOSE 3000
CMD ["npm", "start"]