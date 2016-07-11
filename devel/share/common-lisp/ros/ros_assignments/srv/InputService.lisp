; Auto-generated. Do not edit!


(cl:in-package ros_assignments-srv)


;//! \htmlinclude InputService-request.msg.html

(cl:defclass <InputService-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:string
    :initform ""))
)

(cl:defclass InputService-request (<InputService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InputService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InputService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_assignments-srv:<InputService-request> is deprecated: use ros_assignments-srv:InputService-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <InputService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_assignments-srv:input-val is deprecated.  Use ros_assignments-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InputService-request>) ostream)
  "Serializes a message object of type '<InputService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InputService-request>) istream)
  "Deserializes a message object of type '<InputService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InputService-request>)))
  "Returns string type for a service object of type '<InputService-request>"
  "ros_assignments/InputServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InputService-request)))
  "Returns string type for a service object of type 'InputService-request"
  "ros_assignments/InputServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InputService-request>)))
  "Returns md5sum for a message object of type '<InputService-request>"
  "39e92f1778057359c64c7b8a7d7b19de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InputService-request)))
  "Returns md5sum for a message object of type 'InputService-request"
  "39e92f1778057359c64c7b8a7d7b19de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InputService-request>)))
  "Returns full string definition for message of type '<InputService-request>"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InputService-request)))
  "Returns full string definition for message of type 'InputService-request"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InputService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InputService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InputService-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude InputService-response.msg.html

(cl:defclass <InputService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass InputService-response (<InputService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InputService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InputService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_assignments-srv:<InputService-response> is deprecated: use ros_assignments-srv:InputService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InputService-response>) ostream)
  "Serializes a message object of type '<InputService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InputService-response>) istream)
  "Deserializes a message object of type '<InputService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InputService-response>)))
  "Returns string type for a service object of type '<InputService-response>"
  "ros_assignments/InputServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InputService-response)))
  "Returns string type for a service object of type 'InputService-response"
  "ros_assignments/InputServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InputService-response>)))
  "Returns md5sum for a message object of type '<InputService-response>"
  "39e92f1778057359c64c7b8a7d7b19de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InputService-response)))
  "Returns md5sum for a message object of type 'InputService-response"
  "39e92f1778057359c64c7b8a7d7b19de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InputService-response>)))
  "Returns full string definition for message of type '<InputService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InputService-response)))
  "Returns full string definition for message of type 'InputService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InputService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InputService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InputService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InputService)))
  'InputService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InputService)))
  'InputService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InputService)))
  "Returns string type for a service object of type '<InputService>"
  "ros_assignments/InputService")