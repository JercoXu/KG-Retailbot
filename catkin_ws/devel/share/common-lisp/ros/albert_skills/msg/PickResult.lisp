; Auto-generated. Do not edit!


(cl:in-package albert_skills-msg)


;//! \htmlinclude PickResult.msg.html

(cl:defclass <PickResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PickResult (<PickResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PickResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PickResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name albert_skills-msg:<PickResult> is deprecated: use albert_skills-msg:PickResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PickResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader albert_skills-msg:success-val is deprecated.  Use albert_skills-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PickResult>) ostream)
  "Serializes a message object of type '<PickResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PickResult>) istream)
  "Deserializes a message object of type '<PickResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PickResult>)))
  "Returns string type for a message object of type '<PickResult>"
  "albert_skills/PickResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PickResult)))
  "Returns string type for a message object of type 'PickResult"
  "albert_skills/PickResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PickResult>)))
  "Returns md5sum for a message object of type '<PickResult>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PickResult)))
  "Returns md5sum for a message object of type 'PickResult"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PickResult>)))
  "Returns full string definition for message of type '<PickResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PickResult)))
  "Returns full string definition for message of type 'PickResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PickResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PickResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PickResult
    (cl:cons ':success (success msg))
))