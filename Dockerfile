FROM nginx:stable
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN mkdir /data && mkdir /data/images && mkdir /data/www

COPY ./cubsWorldSeries2016.jpg /data/images
COPY ./index.html /data/www

CMD ["nginx", "-g", "daemon off;"]