#!/usr/bin/env python

import os
import sys
import rospy
import subprocess
try:
    import statux
except:
    subprocess.run("pip3 install statux", shell=True)
from statux.battery import *
from sensor_msgs.msg import BatteryState

path = "/sys/class/power_supply/BAT"

if os.path.exists(path+'1'):
    path = path+'1'
elif os.path.exists(path+'0'):
    path = path+'0'
else:
    sys.exit("File not found")

def find_min_volts():
    min_volt = open(path+"/voltage_min_design").readline().strip()
    return float(int(min_volt)/1000000)

def find_voltage():
    volts = open(path+'/voltage_now', "r").readline().strip()
    return float(int(volts)/1000000)

def find_power():
    power = open(path+"/power_now", "r").readline().strip()
    return float(int(power)/1000000)

def find_current():
    try:
        current = find_power()/find_voltage()
        return float(current)
    except:
        return float(0)

def find_temperature():
    data = str(subprocess.run(["sensors"], shell=True, capture_output=True, text=True))
    data_list = data.split('\\n')
    try:
        position = (data_list.index('acpitz-acpi-0'))+2
        temp = data_list[position]
        temp1 = temp.split(' ')
        temp2 = temp1[8].replace('°C', '')
        temperature = float(temp2)
        return temperature
    except:
        return float(0)

def find_charge():
    energy = open(path+"/energy_now", "r").readline().strip()
    energy_Wh = int(energy)/1000000
    charge = energy_Wh/find_voltage()
    return float(charge)

def find_capacity():
    energy_full = open(path+"/energy_full", "r").readline().strip()
    energy_full_Wh = int(energy_full)/1000000
    capacity = energy_full_Wh/find_min_volts()
    return float(capacity)

def find_design_capacity():
    energy_full_design = open(path+"/energy_full_design", "r").readline().strip()
    energy_design_Wh = int(energy_full_design)/1000000
    design_capacity = energy_design_Wh/find_min_volts()
    return float(design_capacity)

def find_percentage():
    percent = open(path+"/capacity", "r").readline().strip()
    percent_1 = int(percent)/100
    return percent_1

def supply_status():
    status = ('Unknown', 'Charging', 'Discharging', 'Notcharging', 'Full')
    s = open(path+"/status", "r").readline().strip()
    supply_status = enumerate(status)
    for i, b in supply_status:
        if s == b:
            return int(i)
    return int(3)

def is_present():
    pres = open(path+"/present", "r").readline().strip()
    return bool(int(pres))

def supply_technology():
    tech = ('Unknown', 'NiMH', 'Li-ion', 'LiPo', 'LiFe', 'NiCad', 'Li-MN')
    t = open(path+"/technology", "r").readline().strip()
    supply_tech = enumerate(tech)
    for i, b in supply_tech:
        if t == b:
            return int(i)

def supply_health():
    health = ['Unknown', 'Good', 'Overheat', 'Dead', 'Overvoltage', 'Unspec_Failure', 'Cold']
    h = wear_level()
    if find_temperature() > 100:
        return int(health.index('Overheat'))
    elif find_temperature() < 20 and find_temperature() > 0:
        return int(health.index('Cold'))
    elif find_voltage() > find_min_volts():
        return int(health.index('Overvoltage'))
    elif h >= 5:
        return int(health.index('Good'))
    elif h <= 3 and h > 0:
        return int(health.index('Dead'))
    else:
        return int(health.index('Unknown'))

def serial_number():
    s_no = open(path+"/serial_number", "r").readline().strip()
    return str(s_no)

def talker():
    pub = rospy.Publisher('battery_chatter', BatteryState, queue_size = 10)
    rospy.init_node('battery_publisher', anonymous=True)
    rate = rospy.Rate(5)
    battery = BatteryState()
    while not rospy.is_shutdown():
        battery.voltage = find_voltage()
        battery.charge = find_charge()
        battery.current = find_current()
        battery.temperature = find_temperature()
        battery.capacity = find_capacity()
        battery.design_capacity = find_design_capacity()
        battery.percentage = find_percentage()
        battery.power_supply_status = supply_status()
        battery.power_supply_technology = supply_technology()
        battery.power_supply_health = supply_health()
        battery.present = is_present()
        battery.serial_number = serial_number()
        pub_str = "Publishing Battery Data %s"% rospy.get_time()
        rospy.loginfo(pub_str)
        pub.publish(battery)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass


