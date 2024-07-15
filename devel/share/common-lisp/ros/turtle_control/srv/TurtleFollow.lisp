; Auto-generated. Do not edit!


(cl:in-package turtle_control-srv)


;//! \htmlinclude TurtleFollow-request.msg.html

(cl:defclass <TurtleFollow-request> (roslisp-msg-protocol:ros-message)
  ((leader
    :reader leader
    :initarg :leader
    :type cl:string
    :initform ""))
)

(cl:defclass TurtleFollow-request (<TurtleFollow-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtleFollow-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtleFollow-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-srv:<TurtleFollow-request> is deprecated: use turtle_control-srv:TurtleFollow-request instead.")))

(cl:ensure-generic-function 'leader-val :lambda-list '(m))
(cl:defmethod leader-val ((m <TurtleFollow-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:leader-val is deprecated.  Use turtle_control-srv:leader instead.")
  (leader m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtleFollow-request>) ostream)
  "Serializes a message object of type '<TurtleFollow-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'leader))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'leader))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtleFollow-request>) istream)
  "Deserializes a message object of type '<TurtleFollow-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leader) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'leader) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtleFollow-request>)))
  "Returns string type for a service object of type '<TurtleFollow-request>"
  "turtle_control/TurtleFollowRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtleFollow-request)))
  "Returns string type for a service object of type 'TurtleFollow-request"
  "turtle_control/TurtleFollowRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtleFollow-request>)))
  "Returns md5sum for a message object of type '<TurtleFollow-request>"
  "78f97197b9a4b2024f26e6a6f492efd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtleFollow-request)))
  "Returns md5sum for a message object of type 'TurtleFollow-request"
  "78f97197b9a4b2024f26e6a6f492efd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtleFollow-request>)))
  "Returns full string definition for message of type '<TurtleFollow-request>"
  (cl:format cl:nil "string leader~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtleFollow-request)))
  "Returns full string definition for message of type 'TurtleFollow-request"
  (cl:format cl:nil "string leader~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtleFollow-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'leader))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtleFollow-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtleFollow-request
    (cl:cons ':leader (leader msg))
))
;//! \htmlinclude TurtleFollow-response.msg.html

(cl:defclass <TurtleFollow-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass TurtleFollow-response (<TurtleFollow-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtleFollow-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtleFollow-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-srv:<TurtleFollow-response> is deprecated: use turtle_control-srv:TurtleFollow-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TurtleFollow-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:status-val is deprecated.  Use turtle_control-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtleFollow-response>) ostream)
  "Serializes a message object of type '<TurtleFollow-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtleFollow-response>) istream)
  "Deserializes a message object of type '<TurtleFollow-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtleFollow-response>)))
  "Returns string type for a service object of type '<TurtleFollow-response>"
  "turtle_control/TurtleFollowResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtleFollow-response)))
  "Returns string type for a service object of type 'TurtleFollow-response"
  "turtle_control/TurtleFollowResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtleFollow-response>)))
  "Returns md5sum for a message object of type '<TurtleFollow-response>"
  "78f97197b9a4b2024f26e6a6f492efd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtleFollow-response)))
  "Returns md5sum for a message object of type 'TurtleFollow-response"
  "78f97197b9a4b2024f26e6a6f492efd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtleFollow-response>)))
  "Returns full string definition for message of type '<TurtleFollow-response>"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtleFollow-response)))
  "Returns full string definition for message of type 'TurtleFollow-response"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtleFollow-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtleFollow-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtleFollow-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TurtleFollow)))
  'TurtleFollow-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TurtleFollow)))
  'TurtleFollow-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtleFollow)))
  "Returns string type for a service object of type '<TurtleFollow>"
  "turtle_control/TurtleFollow")