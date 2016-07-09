
(cl:in-package :asdf)

(defsystem "ros_assignments-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ServiceCall" :depends-on ("_package_ServiceCall"))
    (:file "_package_ServiceCall" :depends-on ("_package"))
  ))