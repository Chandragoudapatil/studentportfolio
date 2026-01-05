# Use official Node.js image
FROM node:22-alpine

# Create app directory inside container
WORKDIR /app

# Copy only package.json first (better for caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the project files
COPY . .

# Expose the port (change if your app uses another one)
EXPOSE 3000

# Start Node server
CMD ["node", "server.js"]
