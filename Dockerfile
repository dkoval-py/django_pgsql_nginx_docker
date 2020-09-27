FROM python:3.7-slim

RUN apt update && \
    apt install -y --no-install-recommends build-essential python3-dev libpq-dev postgresql-contrib gcc musl-dev netcat curl && \
    rm -rf /var/lib/apt/list/*

RUN pip install --no-cache uwsgi==2.0.19
ADD requirements.txt /
RUN pip install --no-cache -r /requirements.txt

WORKDIR /srv
ADD web_trial/ /srv
ADD entrypoint.sh /srv

HEALTHCHECK --interval=15s --timeout=2s \
  CMD curl -f http://localhost:8000/ || exit 1

ENTRYPOINT ["/srv/entrypoint.sh"]
