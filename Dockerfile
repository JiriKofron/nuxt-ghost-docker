# Set the base image
FROM node:22-bookworm-slim

# Create app directory
WORKDIR /usr/src/app

COPY ./frontend/package.json ./frontend/pnpm-lock.yaml ./

# Install app dependencies
RUN npm install -g pnpm
RUN pnpm install

# Copy all files
COPY ./frontend .

EXPOSE 8080

ENV HOST=0.0.0.0
ENV PORT=8080

# Build the Nuxt.js app
RUN pnpm run build

# Start the app
CMD [ "pnpm", "dev" ]
