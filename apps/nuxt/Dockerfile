ARG NODE_VERSION=22.11.0

FROM node:${NODE_VERSION}-slim as base

ARG PORT=3000

WORKDIR /srv

RUN npm install -g pnpm

FROM base as build

COPY --link package.json pnpm-lock.yaml .
RUN pnpm install

COPY --link . .

RUN npx nuxi build --dotenv .env.local

FROM base

ENV PORT=$PORT
ENV NODE_ENV=production

COPY --from=build /srv/.output /srv/.output

CMD [ "node", ".output/server/index.mjs" ]
