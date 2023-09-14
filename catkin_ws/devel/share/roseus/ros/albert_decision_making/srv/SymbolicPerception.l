;; Auto-generated. Do not edit!


(when (boundp 'albert_decision_making::SymbolicPerception)
  (if (not (find-package "ALBERT_DECISION_MAKING"))
    (make-package "ALBERT_DECISION_MAKING"))
  (shadow 'SymbolicPerception (find-package "ALBERT_DECISION_MAKING")))
(unless (find-package "ALBERT_DECISION_MAKING::SYMBOLICPERCEPTION")
  (make-package "ALBERT_DECISION_MAKING::SYMBOLICPERCEPTION"))
(unless (find-package "ALBERT_DECISION_MAKING::SYMBOLICPERCEPTIONREQUEST")
  (make-package "ALBERT_DECISION_MAKING::SYMBOLICPERCEPTIONREQUEST"))
(unless (find-package "ALBERT_DECISION_MAKING::SYMBOLICPERCEPTIONRESPONSE")
  (make-package "ALBERT_DECISION_MAKING::SYMBOLICPERCEPTIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass albert_decision_making::SymbolicPerceptionRequest
  :super ros::object
  :slots (_state_name _product_id ))

(defmethod albert_decision_making::SymbolicPerceptionRequest
  (:init
   (&key
    ((:state_name __state_name) "")
    ((:product_id __product_id) "")
    )
   (send-super :init)
   (setq _state_name (string __state_name))
   (setq _product_id (string __product_id))
   self)
  (:state_name
   (&optional __state_name)
   (if __state_name (setq _state_name __state_name)) _state_name)
  (:product_id
   (&optional __product_id)
   (if __product_id (setq _product_id __product_id)) _product_id)
  (:serialization-length
   ()
   (+
    ;; string _state_name
    4 (length _state_name)
    ;; string _product_id
    4 (length _product_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state_name
       (write-long (length _state_name) s) (princ _state_name s)
     ;; string _product_id
       (write-long (length _product_id) s) (princ _product_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _product_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _product_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass albert_decision_making::SymbolicPerceptionResponse
  :super ros::object
  :slots (_observations ))

(defmethod albert_decision_making::SymbolicPerceptionResponse
  (:init
   (&key
    ((:observations __observations) (instance std_msgs::Int32MultiArray :init))
    )
   (send-super :init)
   (setq _observations __observations)
   self)
  (:observations
   (&rest __observations)
   (if (keywordp (car __observations))
       (send* _observations __observations)
     (progn
       (if __observations (setq _observations (car __observations)))
       _observations)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32MultiArray _observations
    (send _observations :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32MultiArray _observations
       (send _observations :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32MultiArray _observations
     (send _observations :deserialize buf ptr-) (incf ptr- (send _observations :serialization-length))
   ;;
   self)
  )

(defclass albert_decision_making::SymbolicPerception
  :super ros::object
  :slots ())

(setf (get albert_decision_making::SymbolicPerception :md5sum-) "4c08d451042cc2dddd0c5755ae03d4fe")
(setf (get albert_decision_making::SymbolicPerception :datatype-) "albert_decision_making/SymbolicPerception")
(setf (get albert_decision_making::SymbolicPerception :request) albert_decision_making::SymbolicPerceptionRequest)
(setf (get albert_decision_making::SymbolicPerception :response) albert_decision_making::SymbolicPerceptionResponse)

(defmethod albert_decision_making::SymbolicPerceptionRequest
  (:response () (instance albert_decision_making::SymbolicPerceptionResponse :init)))

(setf (get albert_decision_making::SymbolicPerceptionRequest :md5sum-) "4c08d451042cc2dddd0c5755ae03d4fe")
(setf (get albert_decision_making::SymbolicPerceptionRequest :datatype-) "albert_decision_making/SymbolicPerceptionRequest")
(setf (get albert_decision_making::SymbolicPerceptionRequest :definition-)
      "string state_name
string product_id
---
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
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")

(setf (get albert_decision_making::SymbolicPerceptionResponse :md5sum-) "4c08d451042cc2dddd0c5755ae03d4fe")
(setf (get albert_decision_making::SymbolicPerceptionResponse :datatype-) "albert_decision_making/SymbolicPerceptionResponse")
(setf (get albert_decision_making::SymbolicPerceptionResponse :definition-)
      "string state_name
string product_id
---
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
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")



(provide :albert_decision_making/SymbolicPerception "4c08d451042cc2dddd0c5755ae03d4fe")


