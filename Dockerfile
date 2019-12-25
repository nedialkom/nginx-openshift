FROM nginx:1.17.2-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
COPY log/ /usr/src/log/
COPY privateKey.pem /usr/src/cert/
COPY publicCert.pem /usr/src/cert/