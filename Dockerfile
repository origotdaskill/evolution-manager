# Use the official Node.js 20 image as a base
FROM node:20-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# --- FIX ---
# Copy ALL application files first.
COPY . .

# Install project dependencies (this will also run the prepare script)
RUN npm install

# Build the application
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# The command to start the app
CMD ["node", "build"]
