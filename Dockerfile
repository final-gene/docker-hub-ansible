FROM quay.io/ansible/toolset

RUN apt-get update && apt-get install -y \
   python3-winrm \
   && rm -rf /var/lib/apt/lists/*

RUN pip3 install 'pywinrm>=0.3.0'
