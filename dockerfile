FROM python:3.9.4-alpine
RUN apk add --update \
    g++ \
    libffi-dev \
    openssl-dev \
    make \
  && rm -rf /var/cache/apk/*
ADD ./requirements.txt tmp/requirements.txt
WORKDIR /tmp/
RUN pip install -r requirements.txt
WORKDIR /code/
ENTRYPOINT [ "sh" ]
