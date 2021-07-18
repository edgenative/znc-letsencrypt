# ZNC Lets Encrypt

This script takes a set of pre-existing Lets Encrypt generated certificates, and merges them into the right format for ZNC to use.  Each time it runs, it generates a backup of the existing certificate.

## Usage

There are a few variables in the script, which allow you to set the location of the source certificates, and the destination of your ZNC certificate.

DOMAIN -- *The Domain Name being used if this is a wildcard use the root domain here (e.g. for *.example.org, use example.org)*

ZNC_CERT -- *This is the output file for the ZNC Certificate, as referenced by your ZNC Configuration*

LE_BASE -- *This is the directory where certbot's configuration is found (e.g. /etc/letsencrypt)*

## Automatic Deployment

If you'd like the ZNC certificate process to automatically run after Lets Encrypt has renwed your certificate, simply put this script into /etc/letsencrypt/renewal-hooks/deploy/ and ensure its executable by your lets encrypt user.
