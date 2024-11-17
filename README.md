Nuxt 3 starter app with Docker, Tailwind, Pinia, Eslint, Prettier and Playwright

To test locally with Playwright, run `pnpm dlx playwright install` first

# Development

### Set env variables

`cp .env.example .env` then fill out the variables

### Prepare Nuxt app

`cd apps/nuxt && cp .env .env.local && pnpm install && cd -`\

### Symlink apps

`ln -s $(realpath apps) mount/apps`

### Generate dev certificates

`make certificates`

### Build images and start container

`docker compose up -d --build`

# Production

### Set env variables

In /apps/nuxt/.env.local, set the correct Docker variables

### Generate certificates

// TODO
Use acme.sh to generate the certificates and put them in /apps/nuxt/caddy, the certificates names
must match the DOMAIN_NAME env variable.

Ex : `${DOMAIN_NAME}.pem` and `${DOMAIN_NAME}-key.pem`

### Build images and start container

`cd apps/nuxt && make build`
