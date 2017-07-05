# TODO
## Docker
### Add julia as insecure registry
/etc/docker/daemon.json must contain

{
    "insecure-registries":["julia:5000"]
}

