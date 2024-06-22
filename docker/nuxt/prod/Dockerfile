# Set the base image
FROM node:22-bookworm-slim

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY ./frontend .

# Install app dependencies
RUN npm install -g pnpm
RUN pnpm install

# Build the Nuxt.js app
RUN pnpm run build

# Start the app
CMD [ "pnpm", "dev" ]
