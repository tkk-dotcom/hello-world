# Use the official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy dependency files first for caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
