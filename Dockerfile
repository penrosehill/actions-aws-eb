FROM python:3.12-alpine

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache git

RUN pip install "packaging" "pyyaml<5.4"

RUN pip install --upgrade pip awsebcli

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
