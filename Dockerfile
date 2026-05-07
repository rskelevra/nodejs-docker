FROM registry.buildpiper.in/base/node:18-slim

WORKDIR /app

COPY package*.json ./

ENV http_proxy=http://100.65.247.140:3128
ENV https_proxy=http://100.65.247.140:3128

RUN npm config set proxy http://100.65.247.140:3128 \
 && npm config set https-proxy http://100.65.247.140:3128 \
 && npm ci

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
