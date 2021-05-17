docker build -t py-game .

# link to XWindow
UBUNTU:
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY py-game /bin/bash

MAC:
in a separate window run:
1. brew install socat
2. brew install xquartz
3. XQuartz->preferences->security: tick Allow connections from network clients
4. xhost + allow connections from all hosts
5. socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
6. docker run -rm -i -v ~/:/app -t -e DISPLAY=host.docker.internal:0 /bin/bash
