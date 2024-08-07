FROM python:3.11-bookworm AS base

ENV VIRTUAL_ENV /usr/local/

WORKDIR /app

COPY ./requirements.txt /app/
RUN pip install uv
RUN uv pip install --system -r requirements.txt

COPY ./src /app/src
CMD python -m src.main

FROM base AS test

COPY ./ci-requirements.txt /app/
RUN uv pip install --system -r ci-requirements.txt
