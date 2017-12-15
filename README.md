[![Build Status](https://travis-ci.org/dtulyakov/docker-ansible.svg?branch=master)](https://travis-ci.org/dtulyakov/docker-ansible)

```BASH
docker build --force-rm --no-cache --tag=dtulyakov/ansible:latest . \
  && docker run --rm \
     --name=ansible \
     --volumes-from $(pwd):/app \
     dtulyakov/ansible:latest \
     sh -c "ansible-playbook --version
```
