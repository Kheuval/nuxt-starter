# Set env variables

`cd apps/nuxt && cp .env .env.local`\
`cd ../../docker && cp .env.example .env` then fill out the variables

# Symlink apps

`cd caddy && ln -s ../apps/ ./mount && cd ../`

# Generate dev certificates

`make certificates`

# Build containers

`docker compose up -d --build`