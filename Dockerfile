FROM python:3.6-alpine

LABEL maintainer="ajkaanbal@gmail.com"

WORKDIR /srv/app

COPY . .

RUN apk add --update curl gcc g++ bash \
    && rm -rf /var/cache/apk/* \
    && ln -s /usr/include/locale.h /usr/include/xlocale.h \
    && pip install -r requirements.txt

CMD ["python"]

