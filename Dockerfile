# Use official Node.js image as base
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy app files
COPY package*.json ./
COPY app.js ./

# Install dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 3000

# Define command to run the app
CMD ["npm", "start"]
