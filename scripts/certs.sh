# Get TLS certs to be used in adguard, nas, etc..
k get secret -n network willwhite-dev-production-tls -ojsonpath="{.data}" | jq '.["tls.key"]' | sed -e s/\"//g | base64 -d > certs/certificate.key
k get secret -n network willwhite-dev-production-tls -ojsonpath="{.data}" | jq '.["tls.crt"]' | sed -e s/\"//g | base64 -d > certs/certificate.crt
