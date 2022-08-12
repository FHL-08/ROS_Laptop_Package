# task_ws
A ROS package that publishes information about the host laptop to a Topic

## Messages (.msg)
* [syst_msgs](https://github.com/FHL-08/ROS_Laptop_Package/blob/main/src/laptop_state/msg/laptop_battery.msg): Describes the information about the laptop system, including information about the CPU, Disk and RAM
* [laptop_battery](https://github.com/FHL-08/ROS_Laptop_Package/blob/main/src/laptop_state/msg/laptop_battery.msg): Describes the power state of the battery

## Services (.srv)

## Topics
* The name of the topic for the battery is `/battery_chatter`
* The name of the topic for the laptop is `/system_chatter`
* to view the message published by each topic, run a `rostopic echo <topic name>`

## Installing the package
* Make a local git pull request and download the folder
* change directory to the folder
* Navigate to "ROS_Laptop_package/build" and then delete `CMakeCache.txt` and `catkin_make.cache`
* build the project using a `catkin_make`
* source the folder using `source ./devel/setup.bash`

## Getting the battery information
* To get the battery information, run the `battery_publisher.py` node
* Subscribe to the publisher by running the `battery_subscriber.py` node
* Note: Make sure roscore is running

## Getting Laptop information
* To get the information about the laptop, run the `system_publisher.py` node
* Subscribe to the publisher by running the `system_subscriber.py` node
* Note: Make sure roscore is running
