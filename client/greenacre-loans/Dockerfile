# Dockerfile for client (Next.js)
FROM node:20-alpine

WORKDIR /app

# Update Alpine packages and fix vulnerabilities
RUN apk update && apk upgrade

COPY . .

# Use npm ci if package-lock.json exists
RUN npm ci --legacy-peer-deps

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
