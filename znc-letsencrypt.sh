#!/usr/bin/env sh

DOMAIN=example.org
ZNC_CERT=/home/znc/.config/znc-prod.pem
LE_BASE=/etc/letsencrypt/live
LE_FULLCHAIN="$LE_BASE"/"$DOMAIN"/fullchain.pem
LE_PRIVKEY="$LE_BASE"/"$DOMAIN"/privkey.pem

DATE=$(date +%Y%m%d)

mv "$ZNC_CERT" "$ZNC_CERT"-"$DATE"
cat "$LE_PRIVKEY" > "$ZNC_CERT"
cat "$LE_FULLCHAIN" >> "$ZNC_CERT"
