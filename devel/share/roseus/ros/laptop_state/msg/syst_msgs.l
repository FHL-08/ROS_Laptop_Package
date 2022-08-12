;; Auto-generated. Do not edit!


(when (boundp 'laptop_state::syst_msgs)
  (if (not (find-package "LAPTOP_STATE"))
    (make-package "LAPTOP_STATE"))
  (shadow 'syst_msgs (find-package "LAPTOP_STATE")))
(unless (find-package "LAPTOP_STATE::SYST_MSGS")
  (make-package "LAPTOP_STATE::SYST_MSGS"))

(in-package "ROS")
;;//! \htmlinclude syst_msgs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass laptop_state::syst_msgs
  :super ros::object
  :slots (_header _device_name _partitions _system_size _cpu_processor _free_space _ram_size _used_ram _available_ram _frequency _cpu_temp _core_temp _cpu_model_name _user_name _linux_version ))

(defmethod laptop_state::syst_msgs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:device_name __device_name) "")
    ((:partitions __partitions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:system_size __system_size) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cpu_processor __cpu_processor) 0)
    ((:free_space __free_space) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ram_size __ram_size) 0.0)
    ((:used_ram __used_ram) 0.0)
    ((:available_ram __available_ram) 0.0)
    ((:frequency __frequency) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cpu_temp __cpu_temp) 0.0)
    ((:core_temp __core_temp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cpu_model_name __cpu_model_name) "")
    ((:user_name __user_name) "")
    ((:linux_version __linux_version) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _device_name (string __device_name))
   (setq _partitions __partitions)
   (setq _system_size __system_size)
   (setq _cpu_processor (round __cpu_processor))
   (setq _free_space __free_space)
   (setq _ram_size (float __ram_size))
   (setq _used_ram (float __used_ram))
   (setq _available_ram (float __available_ram))
   (setq _frequency __frequency)
   (setq _cpu_temp (float __cpu_temp))
   (setq _core_temp __core_temp)
   (setq _cpu_model_name (string __cpu_model_name))
   (setq _user_name (string __user_name))
   (setq _linux_version (string __linux_version))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:device_name
   (&optional __device_name)
   (if __device_name (setq _device_name __device_name)) _device_name)
  (:partitions
   (&optional __partitions)
   (if __partitions (setq _partitions __partitions)) _partitions)
  (:system_size
   (&optional __system_size)
   (if __system_size (setq _system_size __system_size)) _system_size)
  (:cpu_processor
   (&optional __cpu_processor)
   (if __cpu_processor (setq _cpu_processor __cpu_processor)) _cpu_processor)
  (:free_space
   (&optional __free_space)
   (if __free_space (setq _free_space __free_space)) _free_space)
  (:ram_size
   (&optional __ram_size)
   (if __ram_size (setq _ram_size __ram_size)) _ram_size)
  (:used_ram
   (&optional __used_ram)
   (if __used_ram (setq _used_ram __used_ram)) _used_ram)
  (:available_ram
   (&optional __available_ram)
   (if __available_ram (setq _available_ram __available_ram)) _available_ram)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:cpu_temp
   (&optional __cpu_temp)
   (if __cpu_temp (setq _cpu_temp __cpu_temp)) _cpu_temp)
  (:core_temp
   (&optional __core_temp)
   (if __core_temp (setq _core_temp __core_temp)) _core_temp)
  (:cpu_model_name
   (&optional __cpu_model_name)
   (if __cpu_model_name (setq _cpu_model_name __cpu_model_name)) _cpu_model_name)
  (:user_name
   (&optional __user_name)
   (if __user_name (setq _user_name __user_name)) _user_name)
  (:linux_version
   (&optional __linux_version)
   (if __linux_version (setq _linux_version __linux_version)) _linux_version)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _device_name
    4 (length _device_name)
    ;; float32[] _partitions
    (* 4    (length _partitions)) 4
    ;; float32[] _system_size
    (* 4    (length _system_size)) 4
    ;; uint32 _cpu_processor
    4
    ;; float32[] _free_space
    (* 4    (length _free_space)) 4
    ;; float64 _ram_size
    8
    ;; float64 _used_ram
    8
    ;; float64 _available_ram
    8
    ;; float32[] _frequency
    (* 4    (length _frequency)) 4
    ;; float64 _cpu_temp
    8
    ;; float32[] _core_temp
    (* 4    (length _core_temp)) 4
    ;; string _cpu_model_name
    4 (length _cpu_model_name)
    ;; string _user_name
    4 (length _user_name)
    ;; string _linux_version
    4 (length _linux_version)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _device_name
       (write-long (length _device_name) s) (princ _device_name s)
     ;; float32[] _partitions
     (write-long (length _partitions) s)
     (dotimes (i (length _partitions))
       (sys::poke (elt _partitions i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _system_size
     (write-long (length _system_size) s)
     (dotimes (i (length _system_size))
       (sys::poke (elt _system_size i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _cpu_processor
       (write-long _cpu_processor s)
     ;; float32[] _free_space
     (write-long (length _free_space) s)
     (dotimes (i (length _free_space))
       (sys::poke (elt _free_space i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float64 _ram_size
       (sys::poke _ram_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _used_ram
       (sys::poke _used_ram (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _available_ram
       (sys::poke _available_ram (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32[] _frequency
     (write-long (length _frequency) s)
     (dotimes (i (length _frequency))
       (sys::poke (elt _frequency i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float64 _cpu_temp
       (sys::poke _cpu_temp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32[] _core_temp
     (write-long (length _core_temp) s)
     (dotimes (i (length _core_temp))
       (sys::poke (elt _core_temp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _cpu_model_name
       (write-long (length _cpu_model_name) s) (princ _cpu_model_name s)
     ;; string _user_name
       (write-long (length _user_name) s) (princ _user_name s)
     ;; string _linux_version
       (write-long (length _linux_version) s) (princ _linux_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _device_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _partitions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _partitions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _partitions i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _system_size
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _system_size (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _system_size i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32 _cpu_processor
     (setq _cpu_processor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _free_space
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _free_space (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _free_space i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float64 _ram_size
     (setq _ram_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _used_ram
     (setq _used_ram (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _available_ram
     (setq _available_ram (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32[] _frequency
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frequency (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _frequency i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float64 _cpu_temp
     (setq _cpu_temp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32[] _core_temp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _core_temp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _core_temp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _cpu_model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cpu_model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _user_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _linux_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _linux_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get laptop_state::syst_msgs :md5sum-) "1fb59ff803a9d3de0eb752fb88926c23")
(setf (get laptop_state::syst_msgs :datatype-) "laptop_state/syst_msgs")
(setf (get laptop_state::syst_msgs :definition-)
      "Header header
string device_name
float32[] partitions
float32[] system_size
uint32 cpu_processor
float32[] free_space
float64 ram_size
float64 used_ram
float64 available_ram
float32[] frequency
float64 cpu_temp
float32[] core_temp
string cpu_model_name
string user_name
string linux_version

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



(provide :laptop_state/syst_msgs "1fb59ff803a9d3de0eb752fb88926c23")


