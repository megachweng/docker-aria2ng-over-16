FROM alpine
LABEL maintainer="megachweng@gmail.com"
EXPOSE 80
EXPOSE 6800

COPY src/aria2c /usr/bin
COPY src/darkhttpd /usr/bin
COPY src/NG /NG
# generate arai2 conf and essential file
WORKDIR /aria2c
COPY src/aria2c.conf.default aria2c.conf
RUN touch /aria2c/aria2c.session && touch /aria2c/dht.dat && mkdir /downloads && chmod +x /usr/bin/aria2c && chmod +x /usr/bin/darkhttpd

VOLUME  /aria2c
VOLUME  /downloads

COPY src/start.sh /start.sh
RUN chmod +x /start.sh
CMD [ "/start.sh" ]