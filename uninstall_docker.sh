#Remoove docker-compose, if it was installed
sudo rm $(which docker-compose) 

#Remove current user from the docker group .
sudo deluser ${USER}  docker

#Remove docker-ce
sudo apt-get remove docker-ce -y
sudo apt-get purge docker-ce -y
