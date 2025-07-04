# Use the official Node.js 20 image as a base
FROM node:20-slim

# Set the working directory
WORKDIR /usr/src/app

# Install vite globally, as in the original file
RUN npm install -g vite

# Expose the correct port the manager runs on
EXPOSE 9615

# Use npx to download and run the latest version of the manager.
# This command starts the server on the correct port.
ENTRYPOINT ["npx", "evolution-manager", "server", "start", "--port=9615"]
