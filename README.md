# snmalloc-checks binary 

This is a containerized build tool that builds the very latest snmalloc with checks from Git every Monday, using the Rocky 9 container. It automatically uploads via CI. There is also a container artifact if you'd like to build it yourself:

```bash
mkdir out
podman run -v "$(pwd)/out":/out ghcr.io/charles8191/snmalloc-checks/artifact 
```

## Demo

```bash
wget https://github.com/charles8191/snmalloc-checks/raw/refs/heads/main/libsnmallocshim-checks.so
LD_PRELOAD=./libsnmallocshim-checks.so /bin/echo "Hello, world!"
```
