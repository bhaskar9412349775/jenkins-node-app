# Use Node.js 
FROM node:18

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install

# Copy Source Code
COPY . .

# Expose port
EXPOSE 3000

# Run app
CMD ["node", "app.js"]
