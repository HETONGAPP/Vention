; Auto-generated. Do not edit!


(cl:in-package serv_msgs-msg)


;//! \htmlinclude he.msg.html

(cl:defclass <he> (roslisp-msg-protocol:ros-message)
  ((tri
    :reader tri
    :initarg :tri
    :type cl:integer
    :initform 0))
)

(cl:defclass he (<he>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <he>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'he)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serv_msgs-msg:<he> is deprecated: use serv_msgs-msg:he instead.")))

(cl:ensure-generic-function 'tri-val :lambda-list '(m))
(cl:defmethod tri-val ((m <he>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serv_msgs-msg:tri-val is deprecated.  Use serv_msgs-msg:tri instead.")
  (tri m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <he>) ostream)
  "Serializes a message object of type '<he>"
  (cl:let* ((signed (cl:slot-value msg 'tri)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <he>) istream)
  "Deserializes a message object of type '<he>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tri) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<he>)))
  "Returns string type for a message object of type '<he>"
  "serv_msgs/he")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'he)))
  "Returns string type for a message object of type 'he"
  "serv_msgs/he")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<he>)))
  "Returns md5sum for a message object of type '<he>"
  "5ed9d42871f5481e2c87506ca573e1e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'he)))
  "Returns md5sum for a message object of type 'he"
  "5ed9d42871f5481e2c87506ca573e1e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<he>)))
  "Returns full string definition for message of type '<he>"
  (cl:format cl:nil "int32 tri~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'he)))
  "Returns full string definition for message of type 'he"
  (cl:format cl:nil "int32 tri~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <he>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <he>))
  "Converts a ROS message object to a list"
  (cl:list 'he
    (cl:cons ':tri (tri msg))
))
