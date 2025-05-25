FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

USER root

COPY setup-cuda.sh /setup/setup-cuda.sh
RUN cd /setup && ./setup-cuda.sh

COPY requirements.txt /setup/requirements.txt
COPY setup.sh /setup/setup.sh
RUN cd /setup && ./setup.sh

USER vscode
