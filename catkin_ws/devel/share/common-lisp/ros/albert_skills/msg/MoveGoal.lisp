; Auto-generated. Do not edit!


(cl:in-package albert_skills-msg)


;//! \htmlinclude MoveGoal.msg.html

(cl:defclass <MoveGoal> (roslisp-msg-protocol:ros-message)
  ((goal_id
    :reader goal_id
    :initarg :goal_id
    :type cl:string
    :initform ""))
)

(cl:defclass MoveGoal (<MoveGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name albert_skills-msg:<MoveGoal> is deprecated: use albert_skills-msg:MoveGoal instead.")))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <MoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader albert_skills-msg:goal_id-val is deprecated.  Use albert_skills-msg:goal_id instead.")
  (goal_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveGoal>) ostream)
  "Serializes a message object of type '<MoveGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveGoal>) istream)
  "Deserializes a message object of type '<MoveGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveGoal>)))
  "Returns string type for a message object of type '<MoveGoal>"
  "albert_skills/MoveGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveGoal)))
  "Returns string type for a message object of type 'MoveGoal"
  "albert_skills/MoveGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveGoal>)))
  "Returns md5sum for a message object of type '<MoveGoal>"
  "1390c9c033b60649917fd23f66f91703")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveGoal)))
  "Returns md5sum for a message object of type 'MoveGoal"
  "1390c9c033b60649917fd23f66f91703")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveGoal>)))
  "Returns full string definition for message of type '<MoveGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%#int32 product_id~%string goal_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveGoal)))
  "Returns full string definition for message of type 'MoveGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%#int32 product_id~%string goal_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'goal_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveGoal
    (cl:cons ':goal_id (goal_id msg))
))