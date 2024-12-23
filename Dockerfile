# Use the official Node.js image as a parent image
FROM node:14
# Set the working directory
WORKDIR /usr/src/app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application code
COPY . .
# Expose port 8080 (the port that Cloud Run expects)
EXPOSE 8080
# Start the application
CMD ["npm", "start"]
