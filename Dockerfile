# Use the official Node.js image from Docker Hub as the base image
FROM node:19.7.0-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if exists) into the container
COPY package*.json /app/

# Install dependencies using npm
RUN npm install

# Copy the rest of the application files into the container
COPY . /app

# Expose the port that the app will run on (this should match the port your app listens on)
EXPOSE 3000

# Define the command to start the application
CMD ["node", "src/index.js"]
