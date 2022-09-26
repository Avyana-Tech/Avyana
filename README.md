# Avyana

This is the main repository for the Avyana Self-Driving Car Project. It is a meta repository, that installs all the other required repositories as `git submodules`, to make it easier for us to develop individual systems, and for the end-user to debug issues. The working graph for the system is in works, and will be updated shortly. 

This project is built on ROS2 with Foxy and Humble.

Get detailed documentation at [Avyana Docs](https://docs.avyana.tech/).

## Installation

We only support `Source Installation` as of now. 

### If ROS2 is already installed.

Clone this Repo directly into your `ROS2 Workspace`, and run

```
git clone https://github.com/Avyana-Tech/avyana.git --recursive
cd Avyana 

git submodule update --init --recursive
git submodule update --remote

rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
```
### If ROS2 is not installed.

If you do not have ROS installed, then run the following
To begin installation of ROS2 and other required dependencies & run

``` 
cd /path/to/avyana
sudo bash Installation/main.bash
```

This will install **ROS2 Foxy** if the OS is Ubuntu 20.04 and **ROS2 Humble** if the OS is Ubuntu 22.04. It also installs all the additional requirements, and git-submodules as well. 

Then move the Avyana folder into the newly created `ROS2 Workspace`, and then run 

```
git clone https://github.com/Avyana-Tech/avyana.git --recursive
cd Avyana 

git submodule update --init --recursive
git submodule update --remote

rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
```

### To install CUDA 

If ros2 already installed, then run
```
sudo bash Installation/install_cuda.bash
```

If ROS2 not installed, run the main.bash install with the argument `--cuda`, as shown:

```
sudo bash Installation/main.bash --cuda
```



### Updates

To update the sub-modules,

```
cd ros2_ws/src
cd Avyana

git submodule update --remote

rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
```

## Docker Image

Currently under the works, a docker image would be provided soon for those who wont to work on Avyana, without a local setup.

