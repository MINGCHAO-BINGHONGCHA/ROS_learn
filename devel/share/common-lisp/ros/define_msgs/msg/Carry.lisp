; Auto-generated. Do not edit!


(cl:in-package define_msgs-msg)


;//! \htmlinclude Carry.msg.html

(cl:defclass <Carry> (roslisp-msg-protocol:ros-message)
  ((grade
    :reader grade
    :initarg :grade
    :type cl:string
    :initform "")
   (star
    :reader star
    :initarg :star
    :type cl:integer
    :initform 0)
   (info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass Carry (<Carry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Carry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Carry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name define_msgs-msg:<Carry> is deprecated: use define_msgs-msg:Carry instead.")))

(cl:ensure-generic-function 'grade-val :lambda-list '(m))
(cl:defmethod grade-val ((m <Carry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader define_msgs-msg:grade-val is deprecated.  Use define_msgs-msg:grade instead.")
  (grade m))

(cl:ensure-generic-function 'star-val :lambda-list '(m))
(cl:defmethod star-val ((m <Carry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader define_msgs-msg:star-val is deprecated.  Use define_msgs-msg:star instead.")
  (star m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <Carry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader define_msgs-msg:info-val is deprecated.  Use define_msgs-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Carry>) ostream)
  "Serializes a message object of type '<Carry>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'grade))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'grade))
  (cl:let* ((signed (cl:slot-value msg 'star)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Carry>) istream)
  "Deserializes a message object of type '<Carry>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grade) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'grade) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'star) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Carry>)))
  "Returns string type for a message object of type '<Carry>"
  "define_msgs/Carry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Carry)))
  "Returns string type for a message object of type 'Carry"
  "define_msgs/Carry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Carry>)))
  "Returns md5sum for a message object of type '<Carry>"
  "4563fd1b6e9431965973ee1f30e624f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Carry)))
  "Returns md5sum for a message object of type 'Carry"
  "4563fd1b6e9431965973ee1f30e624f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Carry>)))
  "Returns full string definition for message of type '<Carry>"
  (cl:format cl:nil "string grade~%~%int64 star~%~%string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Carry)))
  "Returns full string definition for message of type 'Carry"
  (cl:format cl:nil "string grade~%~%int64 star~%~%string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Carry>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'grade))
     8
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Carry>))
  "Converts a ROS message object to a list"
  (cl:list 'Carry
    (cl:cons ':grade (grade msg))
    (cl:cons ':star (star msg))
    (cl:cons ':info (info msg))
))
