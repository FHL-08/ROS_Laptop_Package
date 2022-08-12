// Auto-generated. Do not edit!

// (in-package laptop_state.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class laptop_battery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery_level = null;
    }
    else {
      if (initObj.hasOwnProperty('battery_level')) {
        this.battery_level = initObj.battery_level
      }
      else {
        this.battery_level = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type laptop_battery
    // Serialize message field [battery_level]
    bufferOffset = _serializer.int64(obj.battery_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type laptop_battery
    let len;
    let data = new laptop_battery(null);
    // Deserialize message field [battery_level]
    data.battery_level = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'laptop_state/laptop_battery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60f5d6110c0b3a3406de83fa39611c2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 battery_level
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new laptop_battery(null);
    if (msg.battery_level !== undefined) {
      resolved.battery_level = msg.battery_level;
    }
    else {
      resolved.battery_level = 0
    }

    return resolved;
    }
};

module.exports = laptop_battery;
