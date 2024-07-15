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

class TurtleFollowRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leader = null;
    }
    else {
      if (initObj.hasOwnProperty('leader')) {
        this.leader = initObj.leader
      }
      else {
        this.leader = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurtleFollowRequest
    // Serialize message field [leader]
    bufferOffset = _serializer.string(obj.leader, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurtleFollowRequest
    let len;
    let data = new TurtleFollowRequest(null);
    // Deserialize message field [leader]
    data.leader = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.leader);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtle_control/TurtleFollowRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6332c8cddb205bea3404e043868fc33b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string leader
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurtleFollowRequest(null);
    if (msg.leader !== undefined) {
      resolved.leader = msg.leader;
    }
    else {
      resolved.leader = ''
    }

    return resolved;
    }
};

class TurtleFollowResponse {
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
    // Serializes a message object of type TurtleFollowResponse
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurtleFollowResponse
    let len;
    let data = new TurtleFollowResponse(null);
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
    return 'turtle_control/TurtleFollowResponse';
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
    const resolved = new TurtleFollowResponse(null);
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
  Request: TurtleFollowRequest,
  Response: TurtleFollowResponse,
  md5sum() { return '78f97197b9a4b2024f26e6a6f492efd7'; },
  datatype() { return 'turtle_control/TurtleFollow'; }
};
