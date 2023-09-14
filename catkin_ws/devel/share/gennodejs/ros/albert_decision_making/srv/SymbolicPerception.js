// Auto-generated. Do not edit!

// (in-package albert_decision_making.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SymbolicPerceptionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state_name = null;
      this.product_id = null;
    }
    else {
      if (initObj.hasOwnProperty('state_name')) {
        this.state_name = initObj.state_name
      }
      else {
        this.state_name = '';
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
    // Serializes a message object of type SymbolicPerceptionRequest
    // Serialize message field [state_name]
    bufferOffset = _serializer.string(obj.state_name, buffer, bufferOffset);
    // Serialize message field [product_id]
    bufferOffset = _serializer.string(obj.product_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SymbolicPerceptionRequest
    let len;
    let data = new SymbolicPerceptionRequest(null);
    // Deserialize message field [state_name]
    data.state_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [product_id]
    data.product_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state_name.length;
    length += object.product_id.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'albert_decision_making/SymbolicPerceptionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa1af8ee22a6e69ca23a094ee7dc1b07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string state_name
    string product_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SymbolicPerceptionRequest(null);
    if (msg.state_name !== undefined) {
      resolved.state_name = msg.state_name;
    }
    else {
      resolved.state_name = ''
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

class SymbolicPerceptionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.observations = null;
    }
    else {
      if (initObj.hasOwnProperty('observations')) {
        this.observations = initObj.observations
      }
      else {
        this.observations = new std_msgs.msg.Int32MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SymbolicPerceptionResponse
    // Serialize message field [observations]
    bufferOffset = std_msgs.msg.Int32MultiArray.serialize(obj.observations, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SymbolicPerceptionResponse
    let len;
    let data = new SymbolicPerceptionResponse(null);
    // Deserialize message field [observations]
    data.observations = std_msgs.msg.Int32MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Int32MultiArray.getMessageSize(object.observations);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'albert_decision_making/SymbolicPerceptionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a8f37e92cf560cf92c704a0702bbfe6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32MultiArray observations
    
    
    ================================================================================
    MSG: std_msgs/Int32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    int32[]           data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SymbolicPerceptionResponse(null);
    if (msg.observations !== undefined) {
      resolved.observations = std_msgs.msg.Int32MultiArray.Resolve(msg.observations)
    }
    else {
      resolved.observations = new std_msgs.msg.Int32MultiArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: SymbolicPerceptionRequest,
  Response: SymbolicPerceptionResponse,
  md5sum() { return '4c08d451042cc2dddd0c5755ae03d4fe'; },
  datatype() { return 'albert_decision_making/SymbolicPerception'; }
};
