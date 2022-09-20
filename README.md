# Avyana

This is the main repository for the Avyana Self-Driving Car Project. It is a meta repository, that installs all the other required repositories as `git submodules`, to make it easier for us to develop individual systems, and for the end-user to debug issues. The working graph for the system is in works, and will be updated shortly. 

## Installation

To begin installation of ROS2 and other required dependencies, run

``` 
sudo bash Installation/main.bash
```

This will install **ROS2 Foxy** if the OS is Ubuntu 20.04 and **ROS2 Humble** if the OS is Ubuntu 22.04. It also installs all the additional requirements, and git-submodules as well. 