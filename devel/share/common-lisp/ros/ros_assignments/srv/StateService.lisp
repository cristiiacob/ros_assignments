; Auto-generated. Do not edit!


(cl:in-package ros_assignments-srv)


;//! \htmlinclude StateService-request.msg.html

(cl:defclass <StateService-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StateService-request (<StateService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_assignments-srv:<StateService-request> is deprecated: use ros_assignments-srv:StateService-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateService-request>) ostream)
  "Serializes a message object of type '<StateService-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateService-request>) istream)
  "Deserializes a message object of type '<StateService-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateService-request>)))
  "Returns string type for a service object of type '<StateService-request>"
  "ros_assignments/StateServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateService-request)))
  "Returns string type for a service object of type 'StateService-request"
  "ros_assignments/StateServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateService-request>)))
  "Returns md5sum for a message object of type '<StateService-request>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateService-request)))
  "Returns md5sum for a message object of type 'StateService-request"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateService-request>)))
  "Returns full string definition for message of type '<StateService-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateService-request)))
  "Returns full string definition for message of type 'StateService-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateService-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StateService-request
))
;//! \htmlinclude StateService-response.msg.html

(cl:defclass <StateService-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass StateService-response (<StateService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_assignments-srv:<StateService-response> is deprecated: use ros_assignments-srv:StateService-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <StateService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_assignments-srv:state-val is deprecated.  Use ros_assignments-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateService-response>) ostream)
  "Serializes a message object of type '<StateService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateService-response>) istream)
  "Deserializes a message object of type '<StateService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateService-response>)))
  "Returns string type for a service object of type '<StateService-response>"
  "ros_assignments/StateServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateService-response)))
  "Returns string type for a service object of type 'StateService-response"
  "ros_assignments/StateServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateService-response>)))
  "Returns md5sum for a message object of type '<StateService-response>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateService-response)))
  "Returns md5sum for a message object of type 'StateService-response"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateService-response>)))
  "Returns full string definition for message of type '<StateService-response>"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateService-response)))
  "Returns full string definition for message of type 'StateService-response"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StateService-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StateService)))
  'StateService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StateService)))
  'StateService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateService)))
  "Returns string type for a service object of type '<StateService>"
  "ros_assignments/StateService")