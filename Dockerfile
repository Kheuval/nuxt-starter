ARG NODE_VERSION=22.11.0

FROM node:${NODE_VERSION}-slim as base

ENV NODE_ENV=development
