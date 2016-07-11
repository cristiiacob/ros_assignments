
(cl:in-package :asdf)

(defsystem "ros_assignments-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ServiceCall" :depends-on ("_package_ServiceCall"))
    (:file "_package_ServiceCall" :depends-on ("_package"))
    (:file "InputService" :depends-on ("_package_InputService"))
    (:file "_package_InputService" :depends-on ("_package"))
    (:file "StateService" :depends-on ("_package_StateService"))
    (:file "_package_StateService" :depends-on ("_package"))
  ))