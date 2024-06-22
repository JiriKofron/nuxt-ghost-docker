# Set the base image
FROM node:22-bookworm-slim

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY ./frontend/package*.json ./

# Install app dependencies
RUN npm install -g pnpm
RUN pnpm install

# Copy app source code
COPY ./frontend .

# Build the Nuxt.js app
RUN pnpm run build

# Start the app
CMD [ "pnpm", "dev" ]
