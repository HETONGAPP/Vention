; Auto-generated. Do not edit!


(cl:in-package serv_msgs-msg)


;//! \htmlinclude tong.msg.html

(cl:defclass <tong> (roslisp-msg-protocol:ros-message)
  ((Position_Car1
    :reader Position_Car1
    :initarg :Position_Car1
    :type cl:integer
    :initform 0)
   (Position_Car2
    :reader Position_Car2
    :initarg :Position_Car2
    :type cl:integer
    :initform 0)
   (Position_Car3
    :reader Position_Car3
    :initarg :Position_Car3
    :type cl:integer
    :initform 0)
   (Position_Car4
    :reader Position_Car4
    :initarg :Position_Car4
    :type cl:integer
    :initform 0)
   (Position_Car5
    :reader Position_Car5
    :initarg :Position_Car5
    :type cl:integer
    :initform 0))
)

(cl:defclass tong (<tong>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tong>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tong)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serv_msgs-msg:<tong> is deprecated: use serv_msgs-msg:tong instead.")))

(cl:ensure-generic-function 'Position_Car1-val :lambda-list '(m))
(cl:defmethod Position_Car1-val ((m <tong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serv_msgs-msg:Position_Car1-val is deprecated.  Use serv_msgs-msg:Position_Car1 instead.")
  (Position_Car1 m))

(cl:ensure-generic-function 'Position_Car2-val :lambda-list '(m))
(cl:defmethod Position_Car2-val ((m <tong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serv_msgs-msg:Position_Car2-val is deprecated.  Use serv_msgs-msg:Position_Car2 instead.")
  (Position_Car2 m))

(cl:ensure-generic-function 'Position_Car3-val :lambda-list '(m))
(cl:defmethod Position_Car3-val ((m <tong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serv_msgs-msg:Position_Car3-val is deprecated.  Use serv_msgs-msg:Position_Car3 instead.")
  (Position_Car3 m))

(cl:ensure-generic-function 'Position_Car4-val :lambda-list '(m))
(cl:defmethod Position_Car4-val ((m <tong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serv_msgs-msg:Position_Car4-val is deprecated.  Use serv_msgs-msg:Position_Car4 instead.")
  (Position_Car4 m))

(cl:ensure-generic-function 'Position_Car5-val :lambda-list '(m))
(cl:defmethod Position_Car5-val ((m <tong>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serv_msgs-msg:Position_Car5-val is deprecated.  Use serv_msgs-msg:Position_Car5 instead.")
  (Position_Car5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tong>) ostream)
  "Serializes a message object of type '<tong>"
  (cl:let* ((signed (cl:slot-value msg 'Position_Car1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Position_Car2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Position_Car3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Position_Car4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Position_Car5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tong>) istream)
  "Deserializes a message object of type '<tong>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Position_Car1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Position_Car2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Position_Car3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Position_Car4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Position_Car5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tong>)))
  "Returns string type for a message object of type '<tong>"
  "serv_msgs/tong")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tong)))
  "Returns string type for a message object of type 'tong"
  "serv_msgs/tong")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tong>)))
  "Returns md5sum for a message object of type '<tong>"
  "771500cb791ff0fef268eb7370dbf6c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tong)))
  "Returns md5sum for a message object of type 'tong"
  "771500cb791ff0fef268eb7370dbf6c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tong>)))
  "Returns full string definition for message of type '<tong>"
  (cl:format cl:nil "int32 Position_Car1~%int32 Position_Car2~%int32 Position_Car3~%int32 Position_Car4~%int32 Position_Car5~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tong)))
  "Returns full string definition for message of type 'tong"
  (cl:format cl:nil "int32 Position_Car1~%int32 Position_Car2~%int32 Position_Car3~%int32 Position_Car4~%int32 Position_Car5~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tong>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tong>))
  "Converts a ROS message object to a list"
  (cl:list 'tong
    (cl:cons ':Position_Car1 (Position_Car1 msg))
    (cl:cons ':Position_Car2 (Position_Car2 msg))
    (cl:cons ':Position_Car3 (Position_Car3 msg))
    (cl:cons ':Position_Car4 (Position_Car4 msg))
    (cl:cons ':Position_Car5 (Position_Car5 msg))
))
