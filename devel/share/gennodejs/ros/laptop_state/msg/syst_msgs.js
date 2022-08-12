// Auto-generated. Do not edit!

// (in-package laptop_state.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class syst_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.device_name = null;
      this.partitions = null;
      this.system_size = null;
      this.cpu_processor = null;
      this.free_space = null;
      this.ram_size = null;
      this.used_ram = null;
      this.available_ram = null;
      this.frequency = null;
      this.cpu_temp = null;
      this.core_temp = null;
      this.cpu_model_name = null;
      this.user_name = null;
      this.linux_version = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('device_name')) {
        this.device_name = initObj.device_name
      }
      else {
        this.device_name = '';
      }
      if (initObj.hasOwnProperty('partitions')) {
        this.partitions = initObj.partitions
      }
      else {
        this.partitions = [];
      }
      if (initObj.hasOwnProperty('system_size')) {
        this.system_size = initObj.system_size
      }
      else {
        this.system_size = [];
      }
      if (initObj.hasOwnProperty('cpu_processor')) {
        this.cpu_processor = initObj.cpu_processor
      }
      else {
        this.cpu_processor = 0;
      }
      if (initObj.hasOwnProperty('free_space')) {
        this.free_space = initObj.free_space
      }
      else {
        this.free_space = [];
      }
      if (initObj.hasOwnProperty('ram_size')) {
        this.ram_size = initObj.ram_size
      }
      else {
        this.ram_size = 0.0;
      }
      if (initObj.hasOwnProperty('used_ram')) {
        this.used_ram = initObj.used_ram
      }
      else {
        this.used_ram = 0.0;
      }
      if (initObj.hasOwnProperty('available_ram')) {
        this.available_ram = initObj.available_ram
      }
      else {
        this.available_ram = 0.0;
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = [];
      }
      if (initObj.hasOwnProperty('cpu_temp')) {
        this.cpu_temp = initObj.cpu_temp
      }
      else {
        this.cpu_temp = 0.0;
      }
      if (initObj.hasOwnProperty('core_temp')) {
        this.core_temp = initObj.core_temp
      }
      else {
        this.core_temp = [];
      }
      if (initObj.hasOwnProperty('cpu_model_name')) {
        this.cpu_model_name = initObj.cpu_model_name
      }
      else {
        this.cpu_model_name = '';
      }
      if (initObj.hasOwnProperty('user_name')) {
        this.user_name = initObj.user_name
      }
      else {
        this.user_name = '';
      }
      if (initObj.hasOwnProperty('linux_version')) {
        this.linux_version = initObj.linux_version
      }
      else {
        this.linux_version = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type syst_msgs
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [device_name]
    bufferOffset = _serializer.string(obj.device_name, buffer, bufferOffset);
    // Serialize message field [partitions]
    bufferOffset = _arraySerializer.float32(obj.partitions, buffer, bufferOffset, null);
    // Serialize message field [system_size]
    bufferOffset = _arraySerializer.float32(obj.system_size, buffer, bufferOffset, null);
    // Serialize message field [cpu_processor]
    bufferOffset = _serializer.uint32(obj.cpu_processor, buffer, bufferOffset);
    // Serialize message field [free_space]
    bufferOffset = _arraySerializer.float32(obj.free_space, buffer, bufferOffset, null);
    // Serialize message field [ram_size]
    bufferOffset = _serializer.float64(obj.ram_size, buffer, bufferOffset);
    // Serialize message field [used_ram]
    bufferOffset = _serializer.float64(obj.used_ram, buffer, bufferOffset);
    // Serialize message field [available_ram]
    bufferOffset = _serializer.float64(obj.available_ram, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _arraySerializer.float32(obj.frequency, buffer, bufferOffset, null);
    // Serialize message field [cpu_temp]
    bufferOffset = _serializer.float64(obj.cpu_temp, buffer, bufferOffset);
    // Serialize message field [core_temp]
    bufferOffset = _arraySerializer.float32(obj.core_temp, buffer, bufferOffset, null);
    // Serialize message field [cpu_model_name]
    bufferOffset = _serializer.string(obj.cpu_model_name, buffer, bufferOffset);
    // Serialize message field [user_name]
    bufferOffset = _serializer.string(obj.user_name, buffer, bufferOffset);
    // Serialize message field [linux_version]
    bufferOffset = _serializer.string(obj.linux_version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type syst_msgs
    let len;
    let data = new syst_msgs(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [device_name]
    data.device_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [partitions]
    data.partitions = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [system_size]
    data.system_size = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cpu_processor]
    data.cpu_processor = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [free_space]
    data.free_space = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ram_size]
    data.ram_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [used_ram]
    data.used_ram = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [available_ram]
    data.available_ram = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cpu_temp]
    data.cpu_temp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [core_temp]
    data.core_temp = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cpu_model_name]
    data.cpu_model_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [user_name]
    data.user_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [linux_version]
    data.linux_version = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.device_name);
    length += 4 * object.partitions.length;
    length += 4 * object.system_size.length;
    length += 4 * object.free_space.length;
    length += 4 * object.frequency.length;
    length += 4 * object.core_temp.length;
    length += _getByteLength(object.cpu_model_name);
    length += _getByteLength(object.user_name);
    length += _getByteLength(object.linux_version);
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'laptop_state/syst_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fb59ff803a9d3de0eb752fb88926c23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string device_name
    float32[] partitions
    float32[] system_size
    uint32 cpu_processor
    float32[] free_space
    float64 ram_size
    float64 used_ram
    float64 available_ram
    float32[] frequency
    float64 cpu_temp
    float32[] core_temp
    string cpu_model_name
    string user_name
    string linux_version
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new syst_msgs(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.device_name !== undefined) {
      resolved.device_name = msg.device_name;
    }
    else {
      resolved.device_name = ''
    }

    if (msg.partitions !== undefined) {
      resolved.partitions = msg.partitions;
    }
    else {
      resolved.partitions = []
    }

    if (msg.system_size !== undefined) {
      resolved.system_size = msg.system_size;
    }
    else {
      resolved.system_size = []
    }

    if (msg.cpu_processor !== undefined) {
      resolved.cpu_processor = msg.cpu_processor;
    }
    else {
      resolved.cpu_processor = 0
    }

    if (msg.free_space !== undefined) {
      resolved.free_space = msg.free_space;
    }
    else {
      resolved.free_space = []
    }

    if (msg.ram_size !== undefined) {
      resolved.ram_size = msg.ram_size;
    }
    else {
      resolved.ram_size = 0.0
    }

    if (msg.used_ram !== undefined) {
      resolved.used_ram = msg.used_ram;
    }
    else {
      resolved.used_ram = 0.0
    }

    if (msg.available_ram !== undefined) {
      resolved.available_ram = msg.available_ram;
    }
    else {
      resolved.available_ram = 0.0
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = []
    }

    if (msg.cpu_temp !== undefined) {
      resolved.cpu_temp = msg.cpu_temp;
    }
    else {
      resolved.cpu_temp = 0.0
    }

    if (msg.core_temp !== undefined) {
      resolved.core_temp = msg.core_temp;
    }
    else {
      resolved.core_temp = []
    }

    if (msg.cpu_model_name !== undefined) {
      resolved.cpu_model_name = msg.cpu_model_name;
    }
    else {
      resolved.cpu_model_name = ''
    }

    if (msg.user_name !== undefined) {
      resolved.user_name = msg.user_name;
    }
    else {
      resolved.user_name = ''
    }

    if (msg.linux_version !== undefined) {
      resolved.linux_version = msg.linux_version;
    }
    else {
      resolved.linux_version = ''
    }

    return resolved;
    }
};

module.exports = syst_msgs;
