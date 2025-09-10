# Dockerfile for server (Node.js)
FROM node:20-alpine
WORKDIR /app
RUN apk update && apk upgrade
COPY . .
RUN npm ci --legacy-peer-deps
EXPOSE 8080
CMD ["node", "index.js"]
