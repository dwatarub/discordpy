FROM python:3-slim AS build
USER root

RUN apt update && apt upgrade -y && \
    apt install -y vim less ffmpeg && \
    pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    python -m pip install numpy && \
    python -m pip install discord.py python-dotenv pynacl

FROM build
WORKDIR /srv/discord_bot
