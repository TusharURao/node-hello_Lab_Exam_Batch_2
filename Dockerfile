FROM node:18

# Create app directory
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install --silent

# Copy remaining app files
COPY . .

# App runs on port 3000 inside container
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
