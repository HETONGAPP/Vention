// Auto-generated. Do not edit!

// (in-package serv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class tong {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Position_Car1 = null;
      this.Position_Car2 = null;
      this.Position_Car3 = null;
      this.Position_Car4 = null;
      this.Position_Car5 = null;
    }
    else {
      if (initObj.hasOwnProperty('Position_Car1')) {
        this.Position_Car1 = initObj.Position_Car1
      }
      else {
        this.Position_Car1 = 0;
      }
      if (initObj.hasOwnProperty('Position_Car2')) {
        this.Position_Car2 = initObj.Position_Car2
      }
      else {
        this.Position_Car2 = 0;
      }
      if (initObj.hasOwnProperty('Position_Car3')) {
        this.Position_Car3 = initObj.Position_Car3
      }
      else {
        this.Position_Car3 = 0;
      }
      if (initObj.hasOwnProperty('Position_Car4')) {
        this.Position_Car4 = initObj.Position_Car4
      }
      else {
        this.Position_Car4 = 0;
      }
      if (initObj.hasOwnProperty('Position_Car5')) {
        this.Position_Car5 = initObj.Position_Car5
      }
      else {
        this.Position_Car5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tong
    // Serialize message field [Position_Car1]
    bufferOffset = _serializer.int32(obj.Position_Car1, buffer, bufferOffset);
    // Serialize message field [Position_Car2]
    bufferOffset = _serializer.int32(obj.Position_Car2, buffer, bufferOffset);
    // Serialize message field [Position_Car3]
    bufferOffset = _serializer.int32(obj.Position_Car3, buffer, bufferOffset);
    // Serialize message field [Position_Car4]
    bufferOffset = _serializer.int32(obj.Position_Car4, buffer, bufferOffset);
    // Serialize message field [Position_Car5]
    bufferOffset = _serializer.int32(obj.Position_Car5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tong
    let len;
    let data = new tong(null);
    // Deserialize message field [Position_Car1]
    data.Position_Car1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Position_Car2]
    data.Position_Car2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Position_Car3]
    data.Position_Car3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Position_Car4]
    data.Position_Car4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Position_Car5]
    data.Position_Car5 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'serv_msgs/tong';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '771500cb791ff0fef268eb7370dbf6c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Position_Car1
    int32 Position_Car2
    int32 Position_Car3
    int32 Position_Car4
    int32 Position_Car5
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tong(null);
    if (msg.Position_Car1 !== undefined) {
      resolved.Position_Car1 = msg.Position_Car1;
    }
    else {
      resolved.Position_Car1 = 0
    }

    if (msg.Position_Car2 !== undefined) {
      resolved.Position_Car2 = msg.Position_Car2;
    }
    else {
      resolved.Position_Car2 = 0
    }

    if (msg.Position_Car3 !== undefined) {
      resolved.Position_Car3 = msg.Position_Car3;
    }
    else {
      resolved.Position_Car3 = 0
    }

    if (msg.Position_Car4 !== undefined) {
      resolved.Position_Car4 = msg.Position_Car4;
    }
    else {
      resolved.Position_Car4 = 0
    }

    if (msg.Position_Car5 !== undefined) {
      resolved.Position_Car5 = msg.Position_Car5;
    }
    else {
      resolved.Position_Car5 = 0
    }

    return resolved;
    }
};

module.exports = tong;
