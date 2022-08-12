
(cl:in-package :asdf)

(defsystem "laptop_state-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "laptop_battery" :depends-on ("_package_laptop_battery"))
    (:file "_package_laptop_battery" :depends-on ("_package"))
    (:file "syst_msgs" :depends-on ("_package_syst_msgs"))
    (:file "_package_syst_msgs" :depends-on ("_package"))
  ))