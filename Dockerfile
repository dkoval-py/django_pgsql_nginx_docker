FROM python:3.7-slim

RUN apt update && \
    apt install -y --no-install-recommends build-essential python3-dev libpq-dev postgresql-contrib gcc musl-dev netcat && \
    rm -rf /var/lib/apt/list/*

RUN pip install --no-cache uwsgi==2.0.19
ADD requirements.txt /
RUN pip install --no-cache -r /requirements.txt

WORKDIR /srv
ADD web_trial/ /srv
ADD entrypoint.sh /srv

ENTRYPOINT ["/srv/entrypoint.sh"]
