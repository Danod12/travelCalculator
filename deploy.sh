#!/usr/bin/env #!/usr/bin/env bash
#Check if there is instance running with the image name we are deploying

CURRENT_INSTANCE=$(sudo docker ps -a -q --filter ancestor="$IMAGE_NAME" --format="{{.ID}}")

#if an instance does exist stop the CURRENT_INSTANCe
if [ "$CURRENT_INSTANCE" ]
then
  sudo docker rm $(sudo docker stop $CURRENT_INSTANCE)
fi

# Pull down the isntance from dockerhub
sudo docker pull $IMAGE_NAME

#Check if docker container exists with the name of $CONTAINER_NAME if it does remove the CONTAINER_NAME
CONTAINER_EXISTS=$(sudo docker ps -a | grep $CONTAINER_NAME)
if [ "$CONTAINER_EXISTS" ]
then
  sudo docker rm $CONTAINER_NAME
fi

sudo docker run -p 80:80 -d --name $CONTAINER_NAME $IMAGE_NAME
