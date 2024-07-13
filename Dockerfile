FROM node:20.12.1-alpine3.18

WORKDIR /app

COPY package.json package.json 

RUN npm install --force

COPY . .

CMD ["node", "dist/main"]