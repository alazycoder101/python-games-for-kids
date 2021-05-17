open -a XQuartz
xhost +
WORKDIR=`pwd`
IMAGE=py-game
socat -v TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &
docker run -i --rm -t -v $WORKDIR:/opt/app -e DISPLAY=host.docker.internal:0 $IMAGE /bin/bash
# stop
#kill -9 $(ps | grep "socat" | awk '{ print $1 }')
