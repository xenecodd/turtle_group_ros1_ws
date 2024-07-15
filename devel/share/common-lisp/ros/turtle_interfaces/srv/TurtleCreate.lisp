; Auto-generated. Do not edit!


(cl:in-package turtle_interfaces-srv)


;//! \htmlinclude TurtleCreate-request.msg.html

(cl:defclass <TurtleCreate-request> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0))
)

(cl:defclass TurtleCreate-request (<TurtleCreate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtleCreate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtleCreate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_interfaces-srv:<TurtleCreate-request> is deprecated: use turtle_interfaces-srv:TurtleCreate-request instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <TurtleCreate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_interfaces-srv:num-val is deprecated.  Use turtle_interfaces-srv:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtleCreate-request>) ostream)
  "Serializes a message object of type '<TurtleCreate-request>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtleCreate-request>) istream)
  "Deserializes a message object of type '<TurtleCreate-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtleCreate-request>)))
  "Returns string type for a service object of type '<TurtleCreate-request>"
  "turtle_interfaces/TurtleCreateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtleCreate-request)))
  "Returns string type for a service object of type 'TurtleCreate-request"
  "turtle_interfaces/TurtleCreateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtleCreate-request>)))
  "Returns md5sum for a message object of type '<TurtleCreate-request>"
  "72760cab38314f5e1f8f9a7e416953a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtleCreate-request)))
  "Returns md5sum for a message object of type 'TurtleCreate-request"
  "72760cab38314f5e1f8f9a7e416953a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtleCreate-request>)))
  "Returns full string definition for message of type '<TurtleCreate-request>"
  (cl:format cl:nil "int32 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtleCreate-request)))
  "Returns full string definition for message of type 'TurtleCreate-request"
  (cl:format cl:nil "int32 num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtleCreate-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtleCreate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtleCreate-request
    (cl:cons ':num (num msg))
))
;//! \htmlinclude TurtleCreate-response.msg.html

(cl:defclass <TurtleCreate-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass TurtleCreate-response (<TurtleCreate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtleCreate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtleCreate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_interfaces-srv:<TurtleCreate-response> is deprecated: use turtle_interfaces-srv:TurtleCreate-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TurtleCreate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_interfaces-srv:status-val is deprecated.  Use turtle_interfaces-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtleCreate-response>) ostream)
  "Serializes a message object of type '<TurtleCreate-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtleCreate-response>) istream)
  "Deserializes a message object of type '<TurtleCreate-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtleCreate-response>)))
  "Returns string type for a service object of type '<TurtleCreate-response>"
  "turtle_interfaces/TurtleCreateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtleCreate-response)))
  "Returns string type for a service object of type 'TurtleCreate-response"
  "turtle_interfaces/TurtleCreateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtleCreate-response>)))
  "Returns md5sum for a message object of type '<TurtleCreate-response>"
  "72760cab38314f5e1f8f9a7e416953a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtleCreate-response)))
  "Returns md5sum for a message object of type 'TurtleCreate-response"
  "72760cab38314f5e1f8f9a7e416953a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtleCreate-response>)))
  "Returns full string definition for message of type '<TurtleCreate-response>"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtleCreate-response)))
  "Returns full string definition for message of type 'TurtleCreate-response"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtleCreate-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtleCreate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtleCreate-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TurtleCreate)))
  'TurtleCreate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TurtleCreate)))
  'TurtleCreate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtleCreate)))
  "Returns string type for a service object of type '<TurtleCreate>"
  "turtle_interfaces/TurtleCreate")