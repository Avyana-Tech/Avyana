#!/usr/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install git
sudo apt-get isntall curl
sudo apt-get isntall python3-pip

sudo apt install geographiclib-tools
sudo geographiclib-get-geoids egm2008-1

if [[ $(uname -m) == "aarch64" ]]; then
    sudo apt-get install rpi.gpio
fi

if [[ $1 == "--cuda" ]]; then
    sudo bash Installation/install_cuda.bash
    echo 'Installation Completed with CUDA'
else
    echo "Installation Completed."
fi

git clone https://gist.github.com/REGATTE/7101c20b7055d68e6f57b34687e4b8cd
mv 7101c20b7055d68e6f57b34687e4b8cd ros2_install

chmod a+x ros2_install/ROS2_FOXY_HUMBLE_INSTALL.bash
sudo bash ros2_install/ROS2_FOXY_HUMBLE_INSTALL.bash

sudo pip3 install -r Installation/requirements.txt

sudo apt-get install ssl-cert
sudo make-ssl-cert generate-default-snakeoil

cd 
cd ~/ros2_ws/src
git clone https://github.com/Avyana-Tech/rosbridge_suite.git

cd ..

colcon build
