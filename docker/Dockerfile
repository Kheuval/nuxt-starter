ARG NODE_VERSION=20.10.0

FROM node:${NODE_VERSION} as base

ENV HOST='0.0.0.0'
ENV PORT='3000'
ENV NODE_ENV production

WORKDIR /srv

RUN npm install -g pnpm
RUN npm install -g dotenv-cli

CMD [ "dotenv", "-e", ".env.local", "--", "pnpm", "run", "dev" ]