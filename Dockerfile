FROM node:alpine
EXPOSE 3000
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm","start"]