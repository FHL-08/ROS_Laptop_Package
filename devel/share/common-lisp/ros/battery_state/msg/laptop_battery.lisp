; Auto-generated. Do not edit!


(cl:in-package battery_state-msg)


;//! \htmlinclude laptop_battery.msg.html

(cl:defclass <laptop_battery> (roslisp-msg-protocol:ros-message)
  ((battery_level
    :reader battery_level
    :initarg :battery_level
    :type cl:integer
    :initform 0))
)

(cl:defclass laptop_battery (<laptop_battery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <laptop_battery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'laptop_battery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name battery_state-msg:<laptop_battery> is deprecated: use battery_state-msg:laptop_battery instead.")))

(cl:ensure-generic-function 'battery_level-val :lambda-list '(m))
(cl:defmethod battery_level-val ((m <laptop_battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_state-msg:battery_level-val is deprecated.  Use battery_state-msg:battery_level instead.")
  (battery_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <laptop_battery>) ostream)
  "Serializes a message object of type '<laptop_battery>"
  (cl:let* ((signed (cl:slot-value msg 'battery_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <laptop_battery>) istream)
  "Deserializes a message object of type '<laptop_battery>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_level) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<laptop_battery>)))
  "Returns string type for a message object of type '<laptop_battery>"
  "battery_state/laptop_battery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'laptop_battery)))
  "Returns string type for a message object of type 'laptop_battery"
  "battery_state/laptop_battery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<laptop_battery>)))
  "Returns md5sum for a message object of type '<laptop_battery>"
  "60f5d6110c0b3a3406de83fa39611c2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'laptop_battery)))
  "Returns md5sum for a message object of type 'laptop_battery"
  "60f5d6110c0b3a3406de83fa39611c2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<laptop_battery>)))
  "Returns full string definition for message of type '<laptop_battery>"
  (cl:format cl:nil "int64 battery_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'laptop_battery)))
  "Returns full string definition for message of type 'laptop_battery"
  (cl:format cl:nil "int64 battery_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <laptop_battery>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <laptop_battery>))
  "Converts a ROS message object to a list"
  (cl:list 'laptop_battery
    (cl:cons ':battery_level (battery_level msg))
))
