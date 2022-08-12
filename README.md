# ROS_Laptop_package
A ROS package that publishes information about the host laptop to a Topic

## Messages (.msg)
* [syst_msgs](https://github.com/FHL-08/ROS_Laptop_Package/blob/main/src/laptop_state/msg/laptop_battery.msg): Describes the information about the laptop system, including information about the CPU, Disk and RAM
* [laptop_battery](https://github.com/FHL-08/ROS_Laptop_Package/blob/main/src/laptop_state/msg/laptop_battery.msg): Describes the power state of the battery

## Services (.srv)
* None Currently

## Topics
* The name of the topic for the battery is `/battery_chatter`
* The name of the topic for the laptop is `/system_chatter`
* to view the message published by each topic, run a `rostopic echo <topic name>`

## Installing the package
* Create a catkin workspace in a preferred location
* Make a local git pull request and download the folder
* change directory to the recently downloaded folder
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
