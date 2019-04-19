
#Run below to remove and purge Docker
./uninstall_docker.sh

#Run  update for any existing packages 
sudo apt update -y

#Below are prerequisites for Docker installation
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

#GPG key is needed for Official Docker Repo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add to APT list
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

#Update again, of course
sudo apt update -y

#Few packages might be needed as upgrade ..  If you do not wish to upgrade, comment out below  
sudo apt upgrade -y

#Install the community version. Below will install the latest version
sudo apt install docker-ce -y

#Add the current user to Docker group in order to run Docker as non sudoer
sudo usermod -aG docker ${USER}


#Install Docker-compose 
# By the time we are doing the installation the last version is 1.24.0. but go to https://github.com/docker/compose/releases to find the latest..
sudo curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

#Make the binary executable 
sudo chmod +x /usr/local/bin/docker-compose

#re-login for the permission to take effect .. 
sudo su - ${USER}

