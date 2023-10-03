FROM python:3.11.4-alpine

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

# RUN apt-get update -y
RUN apk add --no-cache git

RUN pip install "pyyaml<5.4"

RUN pip install --upgrade pip awsebcli

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
