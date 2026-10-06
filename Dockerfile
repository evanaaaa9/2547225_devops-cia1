# Use official Node.js Alpine base image (lightweight and secure)
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package dependency definition files
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files (excluding files listed in .dockerignore)
COPY . .

# Expose the port that the application listens on
EXPOSE 3000

# Start the Node.js application
CMD ["npm", "start"]
