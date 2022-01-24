openssl genrsa -out server.key 4096
openssl req -key server.key -new -out server.req
openssl x509 -req -in server.req -CA labca-root.pem -CAkey labca-key.pem  -CAcreateserial -out server.pem
