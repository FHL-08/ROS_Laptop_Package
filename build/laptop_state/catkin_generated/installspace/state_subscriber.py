#!usr/bin/env python

import rospy
from sensor_msgs.msg import BatteryState

status = ("Unknown", "Charging", "Discharging", "Not Charging", "Full")
tech = ("Unknown", "NiMH", "Li-ion", "LiPo", "LiFe", "NiCad", "LiMn")
health = ("Unknown", "Good", "Overheat", "Dead", "Overvoltage", "Unspec_Failure", "Cold", "Watchdog Timer Expire", "Safety Timer Expire")

def callback(data):
    print("="*5)
    rospy.loginfo(rospy.get_caller_id())
    rospy.loginfo("Voltage: %s V"%data.voltage)
    rospy.loginfo("Temperature: %s °C"%data.temperature)
    rospy.loginfo("Current: %s A"%data.current)
    charge = (data.charge)*1000
    rospy.loginfo("Charge: %s mAh"%charge)
    capacity = (data.capacity)*1000
    rospy.loginfo("Capacity: %s mAh"%capacity)
    design_capacity = (data.design_capacity)*1000
    rospy.loginfo("Design_Cpacity: %s mAh"%design_capacity)
    percentage = (data.percentage)*100
    rospy.loginfo("Battery_Level: %s%%"%percentage)
    stat = status[int(data.power_supply_status)]
    rospy.loginfo("Power Supply Status: %s"%stat)
    supply_health = health[int(data.power_supply_health)]
    rospy.loginfo("Power Supply health: %s"%supply_health)
    supply_tech = tech[int(data.power_supply_technology)]
    rospy.loginfo("Power Supply Technology: %s"%supply_tech)
    if data.present:
        rospy.loginfo("Battery is present")
    else:
        rospy.loginfo("Battery is not present")
    rospy.loginfo("Serial Number: %s"%data.serial_number)

def listener():
    rospy.init_node('state_subscriber', anonymous=True)
    rospy.Subscriber("battery_chatter", BatteryState, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
