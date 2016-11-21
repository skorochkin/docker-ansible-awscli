FROM python:2.7-alpine

RUN apk update && apk add bash build-base libffi-dev openssl-dev groff curl git jq
RUN pip install botocore boto boto3 ansible setuptools awscli

WORKDIR /playbook

CMD ["ansible-playbook", "--version"]
