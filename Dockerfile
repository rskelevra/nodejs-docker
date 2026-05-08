FROM registry.buildpiper.in/ot-light:18-slim

WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

ENV http_proxy=http://100.65.247.140:3128
ENV https_proxy=http://100.65.247.140:3128

RUN npm config set proxy http://100.65.247.140:3128 \
 && npm config set https-proxy http://100.65.247.140:3128 \
 && npm config set registry https://registry.npmjs.org/ \
 && npm ci

# Copy remaining files
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
