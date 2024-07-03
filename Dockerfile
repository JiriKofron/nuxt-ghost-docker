# Set the base image
FROM node:lts

# Create app directory
WORKDIR /usr/src/app

COPY ./frontend/package.json ./frontend/pnpm-lock.yaml ./

# Install app dependencies
RUN npm install -g pnpm
RUN npm install -g astro
RUN pnpm install

# Copy all files
COPY ./frontend .

RUN pnpm build

ENV HOST=0.0.0.0
ENV PORT=4321

# Build the Nuxt.js app
RUN pnpm run build

# Start the app
CMD [ "pnpm", "run", "start" ]
