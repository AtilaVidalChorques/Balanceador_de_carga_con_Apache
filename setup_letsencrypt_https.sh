#!/bin/bash
source .env
apt update && apt install certbot python3-certbot-apache -y
certbot --apache -m $EMAIL --agree-tos --no-eff-email -d $DOMAIN --non-interactive
