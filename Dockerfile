FROM registry.buildpiper.in/ot-light:18-slim

WORKDIR /app

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
