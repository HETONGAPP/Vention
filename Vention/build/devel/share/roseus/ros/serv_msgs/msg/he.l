;; Auto-generated. Do not edit!


(when (boundp 'serv_msgs::he)
  (if (not (find-package "SERV_MSGS"))
    (make-package "SERV_MSGS"))
  (shadow 'he (find-package "SERV_MSGS")))
(unless (find-package "SERV_MSGS::HE")
  (make-package "SERV_MSGS::HE"))

(in-package "ROS")
;;//! \htmlinclude he.msg.html


(defclass serv_msgs::he
  :super ros::object
  :slots (_tri ))

(defmethod serv_msgs::he
  (:init
   (&key
    ((:tri __tri) 0)
    )
   (send-super :init)
   (setq _tri (round __tri))
   self)
  (:tri
   (&optional __tri)
   (if __tri (setq _tri __tri)) _tri)
  (:serialization-length
   ()
   (+
    ;; int32 _tri
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _tri
       (write-long _tri s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _tri
     (setq _tri (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get serv_msgs::he :md5sum-) "5ed9d42871f5481e2c87506ca573e1e2")
(setf (get serv_msgs::he :datatype-) "serv_msgs/he")
(setf (get serv_msgs::he :definition-)
      "int32 tri


")



(provide :serv_msgs/he "5ed9d42871f5481e2c87506ca573e1e2")


