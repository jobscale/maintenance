FROM nginx:alpine
RUN apk --no-cache add bash curl openssl
SHELL ["bash", "-c"]
WORKDIR /usr/share/nginx
COPY . .
RUN rm -fr html && ln -sfn docs html \
 && . ssl-keygen \
 && openssl dhparam 256 > tls/dhparam.pem \
 && cp nginx.conf /etc/nginx/nginx.conf \
 && cp default.conf /etc/nginx/conf.d/default.conf
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
