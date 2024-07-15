// Auto-generated. Do not edit!

// (in-package turtle_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TurtleCreateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurtleCreateRequest
    // Serialize message field [num]
    bufferOffset = _serializer.int32(obj.num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurtleCreateRequest
    let len;
    let data = new TurtleCreateRequest(null);
    // Deserialize message field [num]
    data.num = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtle_control/TurtleCreateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54b3c80efd6fae6e6ffff8a4b9facd69';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 num
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurtleCreateRequest(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    return resolved;
    }
};

class TurtleCreateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurtleCreateResponse
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurtleCreateResponse
    let len;
    let data = new TurtleCreateResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtle_control/TurtleCreateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fe5af303955c287688e7347e9b00278';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurtleCreateResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: TurtleCreateRequest,
  Response: TurtleCreateResponse,
  md5sum() { return '72760cab38314f5e1f8f9a7e416953a8'; },
  datatype() { return 'turtle_control/TurtleCreate'; }
};
