; Auto-generated. Do not edit!


(cl:in-package relearning-msg)


;//! \htmlinclude Custom.msg.html

(cl:defclass <Custom> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (str_data
    :reader str_data
    :initarg :str_data
    :type cl:string
    :initform ""))
)

(cl:defclass Custom (<Custom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Custom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Custom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name relearning-msg:<Custom> is deprecated: use relearning-msg:Custom instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Custom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader relearning-msg:header-val is deprecated.  Use relearning-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'str_data-val :lambda-list '(m))
(cl:defmethod str_data-val ((m <Custom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader relearning-msg:str_data-val is deprecated.  Use relearning-msg:str_data instead.")
  (str_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Custom>) ostream)
  "Serializes a message object of type '<Custom>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Custom>) istream)
  "Deserializes a message object of type '<Custom>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Custom>)))
  "Returns string type for a message object of type '<Custom>"
  "relearning/Custom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Custom)))
  "Returns string type for a message object of type 'Custom"
  "relearning/Custom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Custom>)))
  "Returns md5sum for a message object of type '<Custom>"
  "ee9b5f112213e2c79db27e6b91e761b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Custom)))
  "Returns md5sum for a message object of type 'Custom"
  "ee9b5f112213e2c79db27e6b91e761b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Custom>)))
  "Returns full string definition for message of type '<Custom>"
  (cl:format cl:nil "Header header~%string str_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Custom)))
  "Returns full string definition for message of type 'Custom"
  (cl:format cl:nil "Header header~%string str_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Custom>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'str_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Custom>))
  "Converts a ROS message object to a list"
  (cl:list 'Custom
    (cl:cons ':header (header msg))
    (cl:cons ':str_data (str_data msg))
))
