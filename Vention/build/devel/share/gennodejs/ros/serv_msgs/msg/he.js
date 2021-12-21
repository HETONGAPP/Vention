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

class he {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tri = null;
    }
    else {
      if (initObj.hasOwnProperty('tri')) {
        this.tri = initObj.tri
      }
      else {
        this.tri = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type he
    // Serialize message field [tri]
    bufferOffset = _serializer.int32(obj.tri, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type he
    let len;
    let data = new he(null);
    // Deserialize message field [tri]
    data.tri = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'serv_msgs/he';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ed9d42871f5481e2c87506ca573e1e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 tri
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new he(null);
    if (msg.tri !== undefined) {
      resolved.tri = msg.tri;
    }
    else {
      resolved.tri = 0
    }

    return resolved;
    }
};

module.exports = he;
