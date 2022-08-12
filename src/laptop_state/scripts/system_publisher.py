#!/usr/bin/env python

import rospy
import subprocess
try:
    import statux
except:
    subprocess.run("python -m pip install statux", shell=True)
from statux.cpu import *
from statux.disks import *
from statux.ram import *
from statux.system import *
from statux.temp import *
from laptop_state.msg import syst_msgs

def talker():
    pub = rospy.Publisher('system_chatter', syst_msgs, queue_size=10)
    rospy.init_node('system_publisher', anonymous=True)
    rate = rospy.Rate(5)
    system = syst_msgs()
    partition = partitions()
    while not rospy.is_shutdown():
        disk_size = []
        freeSpace = []
        pub_str = "Publishing System Message %s"%rospy.get_time()
        for i in partition:
            disk_size.append(total_size(i))
            freeSpace.append(free_space(i))
        system.device_name = str(hostname())
        system.partitions = partition #list
        system.system_size = disk_size #list
        system.cpu_processor = int(logical_cpus())
        system.free_space = freeSpace #list
        system.ram_size = float(total())
        system.used_ram = float(used())
        system.available_ram = float(available())
        system.frequency = frequency() #list
        try:
            system.cpu_temp = float(cpu())
            system.core_temp = cores() #list
        except:
            system.cpu_temp = float(0)
            system.core_temp = [] #list
        system.cpu_model_name = str(model_name())
        system.user_name = str(user())
        system.linux_version = str(linux_distribution())
        rospy.loginfo(pub_str)
        pub.publish(system)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
