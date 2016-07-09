; Auto-generated. Do not edit!


(cl:in-package ros_assignments-srv)


;//! \htmlinclude ServiceCall-request.msg.html

(cl:defclass <ServiceCall-request> (roslisp-msg-protocol:ros-message)
  ((f
    :reader f
    :initarg :f
    :type cl:float
    :initform 0.0)
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0))
)

(cl:defclass ServiceCall-request (<ServiceCall-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceCall-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceCall-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_assignments-srv:<ServiceCall-request> is deprecated: use ros_assignments-srv:ServiceCall-request instead.")))

(cl:ensure-generic-function 'f-val :lambda-list '(m))
(cl:defmethod f-val ((m <ServiceCall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_assignments-srv:f-val is deprecated.  Use ros_assignments-srv:f instead.")
  (f m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ServiceCall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_assignments-srv:x-val is deprecated.  Use ros_assignments-srv:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceCall-request>) ostream)
  "Serializes a message object of type '<ServiceCall-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'f))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceCall-request>) istream)
  "Deserializes a message object of type '<ServiceCall-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'f) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceCall-request>)))
  "Returns string type for a service object of type '<ServiceCall-request>"
  "ros_assignments/ServiceCallRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceCall-request)))
  "Returns string type for a service object of type 'ServiceCall-request"
  "ros_assignments/ServiceCallRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceCall-request>)))
  "Returns md5sum for a message object of type '<ServiceCall-request>"
  "7beedea2ad148ed58820807ce9337bb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceCall-request)))
  "Returns md5sum for a message object of type 'ServiceCall-request"
  "7beedea2ad148ed58820807ce9337bb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceCall-request>)))
  "Returns full string definition for message of type '<ServiceCall-request>"
  (cl:format cl:nil "float32 f~%int32 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceCall-request)))
  "Returns full string definition for message of type 'ServiceCall-request"
  (cl:format cl:nil "float32 f~%int32 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceCall-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceCall-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceCall-request
    (cl:cons ':f (f msg))
    (cl:cons ':x (x msg))
))
;//! \htmlinclude ServiceCall-response.msg.html

(cl:defclass <ServiceCall-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ServiceCall-response (<ServiceCall-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceCall-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceCall-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_assignments-srv:<ServiceCall-response> is deprecated: use ros_assignments-srv:ServiceCall-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceCall-response>) ostream)
  "Serializes a message object of type '<ServiceCall-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceCall-response>) istream)
  "Deserializes a message object of type '<ServiceCall-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceCall-response>)))
  "Returns string type for a service object of type '<ServiceCall-response>"
  "ros_assignments/ServiceCallResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceCall-response)))
  "Returns string type for a service object of type 'ServiceCall-response"
  "ros_assignments/ServiceCallResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceCall-response>)))
  "Returns md5sum for a message object of type '<ServiceCall-response>"
  "7beedea2ad148ed58820807ce9337bb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceCall-response)))
  "Returns md5sum for a message object of type 'ServiceCall-response"
  "7beedea2ad148ed58820807ce9337bb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceCall-response>)))
  "Returns full string definition for message of type '<ServiceCall-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceCall-response)))
  "Returns full string definition for message of type 'ServiceCall-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceCall-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceCall-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceCall-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceCall)))
  'ServiceCall-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceCall)))
  'ServiceCall-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceCall)))
  "Returns string type for a service object of type '<ServiceCall>"
  "ros_assignments/ServiceCall")