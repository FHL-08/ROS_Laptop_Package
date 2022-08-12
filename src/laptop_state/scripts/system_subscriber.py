#!usr/bin/env python

import rospy
from laptop_state.msg import syst_msgs

def callback(data):
    print("="*5)
    rospy.loginfo(rospy.get_caller_id())
    rospy.loginfo("Device Neme: %s"%data.device_name)
    rospy.loginfo("Linux Version: %s"%data.linux_version)
    rospy.loginfo("CPU Model Name: %s"%data.cpu_model_name)
    rospy.loginfo("User Name: %s"%data.user_name)
    part = ', '.join(data.partitions)
    rospy.loginfo("System Partitions: [%s]"%part)
    size = str(data.system_size)[1: -1]
    rospy.loginfo("Total size of each partition in MB: [%s]"%size)
    rospy.loginfo("No of Logical Processors: %s"%data.cpu_processor)
    freq = str(data.frequency)[1: -1]
    rospy.loginfo("Frequency for each logical CPU in GHz: [%s]"%freq)
    free = str(data.free_space)[1: -1]
    rospy.loginfo("Free Space on each partition in MB: [%s]"%free)
    rospy.loginfo("RAM Size: %s"%data.ram_size)
    rospy.loginfo("Used RAM Space: %s"%data.used_ram)
    rospy.loginfo("Available RAM Space: %s"%data.available_ram)
    rospy.loginfo("CPU Temperature: %s°C"%data.cpu_temp)
    cputemp = str(data.core_temp)[1: -1]
    rospy.loginfo("Temperatures for each CPU core in °C: [%s]"%cputemp)
    
    
    

def listener():
    rospy.init_node('system_subscriber', anonymous=True)
    rospy.Subscriber("system_chatter", syst_msgs, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
