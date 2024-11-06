FROM alpine:3.20.3

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
        py3-passlib \
        py3-pip \
        py3-asn1crypto \
        py3-certifi \
        py3-cffi \
        py3-chardet \
        py3-cryptography \
        py3-idna \
        py3-jsonschema \
        py3-jmespath \
        py3-protobuf \
        py3-pytest \
        py3-requests \
        py3-six \
        py3-urllib3 \
        py3-xmltodict \
    && pip install --no-cache-dir --break-system-packages \
        ntlm-auth \
        proxmoxer \
        pywinrm \
        requests_ntlm \
        yamllint
