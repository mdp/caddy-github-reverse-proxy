# Caddy reverse proxy with Github Auth

Let's us reverse proxy an HTTP service with Caddy, along with an authentication and authorization layer in front of it.

1. Create a GitHub application to use OAuth
1. Get an API key from Cloudflare to use LetsEncrypt to setup HTTPS
1. `cp .env.sample .env` and update the values
1. Run the Caddy server. Try ./start.sh to see what this would look like
