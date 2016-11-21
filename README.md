## Docker image with Ansible (+boto & boto3) and aws-cli installed
#### Description
Docker image with latest Ansible, boto, boto3 and aws-cli. Could be used as base image for Ansible deployments from existing playbook(s).
#### Usage:
```
docker run \
  --rm -it \
  -e AWS_ACCESS_KEY_ID=%KEY_ID% \
  -e AWS_SECRET_ACCESS_KEY=%KEY% \
  -v /loca/folder/with/playbook:/ansible \
  ansible-awscli \
  ansible-playbook master.yml -v
```
