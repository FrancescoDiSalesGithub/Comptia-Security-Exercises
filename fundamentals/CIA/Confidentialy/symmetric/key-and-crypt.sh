openssl genrsa -out keysymmetric.pem 2048
openssl rsautl -encrypt -inkey keysymmetric.pem -in data.txt -out data.ssl
