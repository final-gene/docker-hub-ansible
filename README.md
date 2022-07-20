# Ansible docker image

[![Docker build and publish](https://github.com/final-gene/docker-hub-ansible/actions/workflows/publish.yml/badge.svg)](https://github.com/final-gene/docker-hub-ansible/actions/workflows/publish.yml)

Docker image based on `alpine` providing `ansible` with additional support for WinRM.

## How to use this image

Run the `ansible` image:

```shell
docker run \
  --rm \
  --volume "$(pwd)":/workspace \
  --workdir /workspace
  finalgene/ansible
```

For further information take a look at the [Ansible Documentation](https://docs.ansible.com/ansible/latest/index.html).

## Quick reference
* **Where to get help:**
  [the Docker Community Forums](https://forums.docker.com), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

* **Where to file issues:**
  https://github.com/finalgene/docker-hub-ansible/issues

* **Maintained by:**
  [The final gene Team](https://github.com/finalgene)

* **Source of this description:**
  [Repository README.md](https://github.com/finalgene/docker-hub-ansible/blob/master/README.md)
