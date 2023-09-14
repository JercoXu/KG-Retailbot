; Auto-generated. Do not edit!


(cl:in-package albert_decision_making-srv)


;//! \htmlinclude SymbolicPerception-request.msg.html

(cl:defclass <SymbolicPerception-request> (roslisp-msg-protocol:ros-message)
  ((state_name
    :reader state_name
    :initarg :state_name
    :type cl:string
    :initform "")
   (product_id
    :reader product_id
    :initarg :product_id
    :type cl:string
    :initform ""))
)

(cl:defclass SymbolicPerception-request (<SymbolicPerception-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SymbolicPerception-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SymbolicPerception-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name albert_decision_making-srv:<SymbolicPerception-request> is deprecated: use albert_decision_making-srv:SymbolicPerception-request instead.")))

(cl:ensure-generic-function 'state_name-val :lambda-list '(m))
(cl:defmethod state_name-val ((m <SymbolicPerception-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader albert_decision_making-srv:state_name-val is deprecated.  Use albert_decision_making-srv:state_name instead.")
  (state_name m))

(cl:ensure-generic-function 'product_id-val :lambda-list '(m))
(cl:defmethod product_id-val ((m <SymbolicPerception-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader albert_decision_making-srv:product_id-val is deprecated.  Use albert_decision_making-srv:product_id instead.")
  (product_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SymbolicPerception-request>) ostream)
  "Serializes a message object of type '<SymbolicPerception-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'product_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'product_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SymbolicPerception-request>) istream)
  "Deserializes a message object of type '<SymbolicPerception-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'product_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'product_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SymbolicPerception-request>)))
  "Returns string type for a service object of type '<SymbolicPerception-request>"
  "albert_decision_making/SymbolicPerceptionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SymbolicPerception-request)))
  "Returns string type for a service object of type 'SymbolicPerception-request"
  "albert_decision_making/SymbolicPerceptionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SymbolicPerception-request>)))
  "Returns md5sum for a message object of type '<SymbolicPerception-request>"
  "4c08d451042cc2dddd0c5755ae03d4fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SymbolicPerception-request)))
  "Returns md5sum for a message object of type 'SymbolicPerception-request"
  "4c08d451042cc2dddd0c5755ae03d4fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SymbolicPerception-request>)))
  "Returns full string definition for message of type '<SymbolicPerception-request>"
  (cl:format cl:nil "string state_name~%string product_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SymbolicPerception-request)))
  "Returns full string definition for message of type 'SymbolicPerception-request"
  (cl:format cl:nil "string state_name~%string product_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SymbolicPerception-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state_name))
     4 (cl:length (cl:slot-value msg 'product_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SymbolicPerception-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SymbolicPerception-request
    (cl:cons ':state_name (state_name msg))
    (cl:cons ':product_id (product_id msg))
))
;//! \htmlinclude SymbolicPerception-response.msg.html

(cl:defclass <SymbolicPerception-response> (roslisp-msg-protocol:ros-message)
  ((observations
    :reader observations
    :initarg :observations
    :type std_msgs-msg:Int32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int32MultiArray)))
)

(cl:defclass SymbolicPerception-response (<SymbolicPerception-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SymbolicPerception-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SymbolicPerception-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name albert_decision_making-srv:<SymbolicPerception-response> is deprecated: use albert_decision_making-srv:SymbolicPerception-response instead.")))

(cl:ensure-generic-function 'observations-val :lambda-list '(m))
(cl:defmethod observations-val ((m <SymbolicPerception-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader albert_decision_making-srv:observations-val is deprecated.  Use albert_decision_making-srv:observations instead.")
  (observations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SymbolicPerception-response>) ostream)
  "Serializes a message object of type '<SymbolicPerception-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'observations) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SymbolicPerception-response>) istream)
  "Deserializes a message object of type '<SymbolicPerception-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'observations) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SymbolicPerception-response>)))
  "Returns string type for a service object of type '<SymbolicPerception-response>"
  "albert_decision_making/SymbolicPerceptionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SymbolicPerception-response)))
  "Returns string type for a service object of type 'SymbolicPerception-response"
  "albert_decision_making/SymbolicPerceptionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SymbolicPerception-response>)))
  "Returns md5sum for a message object of type '<SymbolicPerception-response>"
  "4c08d451042cc2dddd0c5755ae03d4fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SymbolicPerception-response)))
  "Returns md5sum for a message object of type 'SymbolicPerception-response"
  "4c08d451042cc2dddd0c5755ae03d4fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SymbolicPerception-response>)))
  "Returns full string definition for message of type '<SymbolicPerception-response>"
  (cl:format cl:nil "std_msgs/Int32MultiArray observations~%~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SymbolicPerception-response)))
  "Returns full string definition for message of type 'SymbolicPerception-response"
  (cl:format cl:nil "std_msgs/Int32MultiArray observations~%~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SymbolicPerception-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'observations))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SymbolicPerception-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SymbolicPerception-response
    (cl:cons ':observations (observations msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SymbolicPerception)))
  'SymbolicPerception-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SymbolicPerception)))
  'SymbolicPerception-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SymbolicPerception)))
  "Returns string type for a service object of type '<SymbolicPerception>"
  "albert_decision_making/SymbolicPerception")