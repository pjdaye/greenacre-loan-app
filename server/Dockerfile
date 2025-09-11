# Dockerfile for server (Node.js)
FROM node:22-alpine
WORKDIR /app
RUN apk update && apk upgrade && apk add curl
COPY . .
RUN npm ci --legacy-peer-deps
EXPOSE 8080
CMD ["node", "index.js"]
