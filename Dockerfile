# Use an official Node.js runtime as a parent image
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy all files from the current directory to the container
COPY . .

# Expose the port that the app will run on
EXPOSE 8080

# Start the app
CMD ["npm", "run", "serve"]
