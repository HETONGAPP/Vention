;; Auto-generated. Do not edit!


(when (boundp 'serv_msgs::tong)
  (if (not (find-package "SERV_MSGS"))
    (make-package "SERV_MSGS"))
  (shadow 'tong (find-package "SERV_MSGS")))
(unless (find-package "SERV_MSGS::TONG")
  (make-package "SERV_MSGS::TONG"))

(in-package "ROS")
;;//! \htmlinclude tong.msg.html


(defclass serv_msgs::tong
  :super ros::object
  :slots (_Position_Car1 _Position_Car2 _Position_Car3 _Position_Car4 _Position_Car5 ))

(defmethod serv_msgs::tong
  (:init
   (&key
    ((:Position_Car1 __Position_Car1) 0)
    ((:Position_Car2 __Position_Car2) 0)
    ((:Position_Car3 __Position_Car3) 0)
    ((:Position_Car4 __Position_Car4) 0)
    ((:Position_Car5 __Position_Car5) 0)
    )
   (send-super :init)
   (setq _Position_Car1 (round __Position_Car1))
   (setq _Position_Car2 (round __Position_Car2))
   (setq _Position_Car3 (round __Position_Car3))
   (setq _Position_Car4 (round __Position_Car4))
   (setq _Position_Car5 (round __Position_Car5))
   self)
  (:Position_Car1
   (&optional __Position_Car1)
   (if __Position_Car1 (setq _Position_Car1 __Position_Car1)) _Position_Car1)
  (:Position_Car2
   (&optional __Position_Car2)
   (if __Position_Car2 (setq _Position_Car2 __Position_Car2)) _Position_Car2)
  (:Position_Car3
   (&optional __Position_Car3)
   (if __Position_Car3 (setq _Position_Car3 __Position_Car3)) _Position_Car3)
  (:Position_Car4
   (&optional __Position_Car4)
   (if __Position_Car4 (setq _Position_Car4 __Position_Car4)) _Position_Car4)
  (:Position_Car5
   (&optional __Position_Car5)
   (if __Position_Car5 (setq _Position_Car5 __Position_Car5)) _Position_Car5)
  (:serialization-length
   ()
   (+
    ;; int32 _Position_Car1
    4
    ;; int32 _Position_Car2
    4
    ;; int32 _Position_Car3
    4
    ;; int32 _Position_Car4
    4
    ;; int32 _Position_Car5
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Position_Car1
       (write-long _Position_Car1 s)
     ;; int32 _Position_Car2
       (write-long _Position_Car2 s)
     ;; int32 _Position_Car3
       (write-long _Position_Car3 s)
     ;; int32 _Position_Car4
       (write-long _Position_Car4 s)
     ;; int32 _Position_Car5
       (write-long _Position_Car5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Position_Car1
     (setq _Position_Car1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Position_Car2
     (setq _Position_Car2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Position_Car3
     (setq _Position_Car3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Position_Car4
     (setq _Position_Car4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Position_Car5
     (setq _Position_Car5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get serv_msgs::tong :md5sum-) "771500cb791ff0fef268eb7370dbf6c1")
(setf (get serv_msgs::tong :datatype-) "serv_msgs/tong")
(setf (get serv_msgs::tong :definition-)
      "int32 Position_Car1
int32 Position_Car2
int32 Position_Car3
int32 Position_Car4
int32 Position_Car5



")



(provide :serv_msgs/tong "771500cb791ff0fef268eb7370dbf6c1")


