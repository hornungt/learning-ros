;; Auto-generated. Do not edit!


(when (boundp 'relearning::Custom)
  (if (not (find-package "RELEARNING"))
    (make-package "RELEARNING"))
  (shadow 'Custom (find-package "RELEARNING")))
(unless (find-package "RELEARNING::CUSTOM")
  (make-package "RELEARNING::CUSTOM"))

(in-package "ROS")
;;//! \htmlinclude Custom.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass relearning::Custom
  :super ros::object
  :slots (_header _str_data ))

(defmethod relearning::Custom
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:str_data __str_data) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _str_data (string __str_data))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:str_data
   (&optional __str_data)
   (if __str_data (setq _str_data __str_data)) _str_data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _str_data
    4 (length _str_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _str_data
       (write-long (length _str_data) s) (princ _str_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _str_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get relearning::Custom :md5sum-) "ee9b5f112213e2c79db27e6b91e761b2")
(setf (get relearning::Custom :datatype-) "relearning/Custom")
(setf (get relearning::Custom :definition-)
      "Header header
string str_data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :relearning/Custom "ee9b5f112213e2c79db27e6b91e761b2")


