FROM python:2.7-alpine

ADD config/repositories /etc/apk/repositories

RUN apk add --no-cache bash build-base libffi-dev openssl-dev groff curl git jq zip docker
RUN pip install botocore boto boto3 ansible setuptools awscli

WORKDIR /playbook

CMD ["ansible-playbook", "--version"]
