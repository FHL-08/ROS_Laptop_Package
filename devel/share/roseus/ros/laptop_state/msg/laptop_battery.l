;; Auto-generated. Do not edit!


(when (boundp 'laptop_state::laptop_battery)
  (if (not (find-package "LAPTOP_STATE"))
    (make-package "LAPTOP_STATE"))
  (shadow 'laptop_battery (find-package "LAPTOP_STATE")))
(unless (find-package "LAPTOP_STATE::LAPTOP_BATTERY")
  (make-package "LAPTOP_STATE::LAPTOP_BATTERY"))

(in-package "ROS")
;;//! \htmlinclude laptop_battery.msg.html


(defclass laptop_state::laptop_battery
  :super ros::object
  :slots (_battery_level ))

(defmethod laptop_state::laptop_battery
  (:init
   (&key
    ((:battery_level __battery_level) 0)
    )
   (send-super :init)
   (setq _battery_level (round __battery_level))
   self)
  (:battery_level
   (&optional __battery_level)
   (if __battery_level (setq _battery_level __battery_level)) _battery_level)
  (:serialization-length
   ()
   (+
    ;; int64 _battery_level
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _battery_level
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _battery_level (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _battery_level) (= (length (_battery_level . bv)) 2)) ;; bignum
              (write-long (ash (elt (_battery_level . bv) 0) 0) s)
              (write-long (ash (elt (_battery_level . bv) 1) -1) s))
             ((and (class _battery_level) (= (length (_battery_level . bv)) 1)) ;; big1
              (write-long (elt (_battery_level . bv) 0) s)
              (write-long (if (>= _battery_level 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _battery_level s)(write-long (if (>= _battery_level 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _battery_level
#+(or :alpha :irix6 :x86_64)
      (setf _battery_level (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _battery_level (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get laptop_state::laptop_battery :md5sum-) "60f5d6110c0b3a3406de83fa39611c2e")
(setf (get laptop_state::laptop_battery :datatype-) "laptop_state/laptop_battery")
(setf (get laptop_state::laptop_battery :definition-)
      "int64 battery_level

")



(provide :laptop_state/laptop_battery "60f5d6110c0b3a3406de83fa39611c2e")


