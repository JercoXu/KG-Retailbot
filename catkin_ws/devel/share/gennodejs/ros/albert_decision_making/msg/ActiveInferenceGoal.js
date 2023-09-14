// Auto-generated. Do not edit!

// (in-package albert_decision_making.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ActiveInferenceGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.product_id = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('product_id')) {
        this.product_id = initObj.product_id
      }
      else {
        this.product_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActiveInferenceGoal
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [product_id]
    bufferOffset = _serializer.string(obj.product_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActiveInferenceGoal
    let len;
    let data = new ActiveInferenceGoal(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [product_id]
    data.product_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    length += object.product_id.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'albert_decision_making/ActiveInferenceGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b01c6369ab93de108f2bbc20673afbd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    string state
    string product_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActiveInferenceGoal(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.product_id !== undefined) {
      resolved.product_id = msg.product_id;
    }
    else {
      resolved.product_id = ''
    }

    return resolved;
    }
};

module.exports = ActiveInferenceGoal;
