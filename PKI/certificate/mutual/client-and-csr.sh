openssl genrsa -out user.key 4096
openssl req -key user.key -new -out user.req

openssl x509 -req -in user.req -CA labca-root.pem -CAkey labca-key.pem -CAcreateserial -out user.pem
openssl pkcs12 -export -out user.pfx -inkey user.key -in user.pem
