# Dockerfile for frontend and backend

# Base image for backend
FROM node:slim AS backend

# Set working directory for backend
WORKDIR /app/server

# Copy backend files
COPY server/package.json server/package-lock.json ./
RUN npm install
COPY server/ ./

# Base image for frontend
FROM node:slim AS frontend

# Set working directory for frontend
WORKDIR /app/client

# Copy frontend files
COPY client/package.json client/package-lock.json ./
RUN npm install
COPY client/ ./

# Expose ports
EXPOSE 3000 5000

# Start both frontend and backend
CMD ["sh", "-c", "cd /app/server && node index.js & cd /app/client && npm start"]