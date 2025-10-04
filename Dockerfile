# Use Node official image
FROM node:20-bullseye

# Set working directory
WORKDIR /app

# Copy package files first for caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci --force

# Copy the rest of your code
COPY . .

# Expose port if needed
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
