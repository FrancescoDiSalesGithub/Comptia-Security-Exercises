openssl genrsa -aes256 -out labca-key.pem 4096
openssl req -x509 -new -nodes -extensions v3_ca -key labca-key.pem -days 365 -out labca-root.pem -sha512
