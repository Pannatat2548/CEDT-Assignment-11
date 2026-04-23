FROM node:25-alpine
COPY package*.json .
COPY . .
RUN npm install
RUN npm run build
CMD ["npm", "start"]
EXPOSE 3000