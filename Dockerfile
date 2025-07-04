# Use the official Node.js 20 image as a base
FROM node:20-slim

# Set the working directory
WORKDIR /usr/src/app

# --- FIX ---
# Force the installation of the missing dependency alongside the main package
RUN npm install evolution-manager@latest fs-extra@latest

# Expose the correct port
EXPOSE 9615

# Run the application from the installed node_modules directory
CMD ["./node_modules/.bin/evolution-manager", "server", "start", "--port=9615"]
