# Dockerfile for test (Playwright)
FROM mcr.microsoft.com/playwright:v1.44.2-jammy
WORKDIR /tests
RUN apt-get update && apt-get upgrade -y
COPY . .
RUN npm ci --legacy-peer-deps
CMD ["npx", "playwright", "test"]
