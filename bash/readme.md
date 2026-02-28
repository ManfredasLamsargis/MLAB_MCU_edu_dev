Build the workspace container from the image:
```bash
docker build -t ubuntu-bash .
```
Run the container to enter the workspace:
```bash
docker run -it --rm -h mlab ubuntu-bash:latest
```