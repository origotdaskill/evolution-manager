# Use the official Node.js 20 image as a base
FROM node:20-slim

# Set the working directory
WORKDIR /usr/src/app

# Install the evolution-manager package and all its dependencies
RUN npm install evolution-manager@latest

# Expose the port the app runs on
EXPOSE 9615

# Run the application from the files we just installed
CMD ["./node_modules/.bin/evolution-manager", "server", "start", "--port=9615"]
