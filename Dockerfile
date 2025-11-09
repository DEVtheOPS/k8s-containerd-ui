FROM node:25-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm i
COPY . .
RUN npm run build

CMD ["node", "build"]