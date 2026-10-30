FROM nginx:alpine
COPY config/nginx-default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
RUN echo `TZ='Europe/Copenhagen' date` > /usr/share/nginx/html/last_build.txt