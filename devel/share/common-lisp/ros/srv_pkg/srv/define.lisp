; Auto-generated. Do not edit!


(cl:in-package srv_pkg-srv)


;//! \htmlinclude define-request.msg.html

(cl:defclass <define-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass define-request (<define-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <define-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'define-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srv_pkg-srv:<define-request> is deprecated: use srv_pkg-srv:define-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <define-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv_pkg-srv:num1-val is deprecated.  Use srv_pkg-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <define-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv_pkg-srv:num2-val is deprecated.  Use srv_pkg-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <define-request>) ostream)
  "Serializes a message object of type '<define-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <define-request>) istream)
  "Deserializes a message object of type '<define-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<define-request>)))
  "Returns string type for a service object of type '<define-request>"
  "srv_pkg/defineRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'define-request)))
  "Returns string type for a service object of type 'define-request"
  "srv_pkg/defineRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<define-request>)))
  "Returns md5sum for a message object of type '<define-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'define-request)))
  "Returns md5sum for a message object of type 'define-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<define-request>)))
  "Returns full string definition for message of type '<define-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'define-request)))
  "Returns full string definition for message of type 'define-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <define-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <define-request>))
  "Converts a ROS message object to a list"
  (cl:list 'define-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude define-response.msg.html

(cl:defclass <define-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass define-response (<define-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <define-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'define-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srv_pkg-srv:<define-response> is deprecated: use srv_pkg-srv:define-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <define-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv_pkg-srv:sum-val is deprecated.  Use srv_pkg-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <define-response>) ostream)
  "Serializes a message object of type '<define-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <define-response>) istream)
  "Deserializes a message object of type '<define-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<define-response>)))
  "Returns string type for a service object of type '<define-response>"
  "srv_pkg/defineResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'define-response)))
  "Returns string type for a service object of type 'define-response"
  "srv_pkg/defineResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<define-response>)))
  "Returns md5sum for a message object of type '<define-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'define-response)))
  "Returns md5sum for a message object of type 'define-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<define-response>)))
  "Returns full string definition for message of type '<define-response>"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'define-response)))
  "Returns full string definition for message of type 'define-response"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <define-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <define-response>))
  "Converts a ROS message object to a list"
  (cl:list 'define-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'define)))
  'define-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'define)))
  'define-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'define)))
  "Returns string type for a service object of type '<define>"
  "srv_pkg/define")