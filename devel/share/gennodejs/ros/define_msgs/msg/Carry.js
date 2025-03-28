// Auto-generated. Do not edit!

// (in-package define_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Carry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.grade = null;
      this.star = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('grade')) {
        this.grade = initObj.grade
      }
      else {
        this.grade = '';
      }
      if (initObj.hasOwnProperty('star')) {
        this.star = initObj.star
      }
      else {
        this.star = 0;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Carry
    // Serialize message field [grade]
    bufferOffset = _serializer.string(obj.grade, buffer, bufferOffset);
    // Serialize message field [star]
    bufferOffset = _serializer.int64(obj.star, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Carry
    let len;
    let data = new Carry(null);
    // Deserialize message field [grade]
    data.grade = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [star]
    data.star = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.grade);
    length += _getByteLength(object.info);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'define_msgs/Carry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4563fd1b6e9431965973ee1f30e624f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string grade
    
    int64 star
    
    string info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Carry(null);
    if (msg.grade !== undefined) {
      resolved.grade = msg.grade;
    }
    else {
      resolved.grade = ''
    }

    if (msg.star !== undefined) {
      resolved.star = msg.star;
    }
    else {
      resolved.star = 0
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    return resolved;
    }
};

module.exports = Carry;
