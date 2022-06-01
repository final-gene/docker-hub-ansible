FROM alpine:3.16.0

ENV ANSIBLE_SSH_ARGS='-o ControlMaster=auto -o ControlPersist=600s -o ServerAliveInterval=60 -o TCPKeepAlive=yes' \
    ANSIBLE_FORCE_COLOR=true \
    GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"

RUN apk add --no-cache \
        ansible \
        ansible-lint \
        bash \
        curl \
        git \
        jq \
        openssh \
        python3 \
        py3-pip \
    && pip install --no-cache-dir \
        asn1crypto \
        certifi \
        cffi \
        chardet \
        cryptography \
        idna \
        ntlm-auth \
        protobuf \
        pywinrm\
        requests \
        requests_ntlm \
        six \
        urllib3 \
        xmltodict
