# xfoil-docker

Dockerfiles for XFOIL

### **Instructions:**

The user can either build the Docker image themselves or pull the image from Dockerhub:

```bash
$ docker pull danielkelshaw/xfoil:latest
```

The docker container can then be run using any standard `docker run` command, for example:

```bash
$ docker run -ti --rm -v $(pwd):/workspace/ --name xfoil danielkelshaw/xfoil:latest
```

Once inside the container, `xfoil` should be in the path so it can be accessed through:

```bash
$ xfoil
```

**Note:** As `xfoil` is running within a container there won't be the same visualiation capabilities as you might have when running on your local machine. In order to disable the display settings:

1. Start in `XFOIL` menu.
2. Enter `PLOP` menu.
3. Disable graphics with: `G`.
4. Return to `XFOIL` menu.

###### Made by Daniel Kelshaw

