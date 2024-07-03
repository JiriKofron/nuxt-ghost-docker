FROM node:lts AS runtime
WORKDIR /app

COPY ./frontend/package.json ./frontend/pnpm-lock.yaml* ./

RUN npm install -g pnpm
RUN npm install -g astro
RUN pnpm install

COPY ./frontend .

RUN pnpm build

ENV HOST=0.0.0.0
ENV PORT=4321

CMD ["pnpm", "run", "start"]
