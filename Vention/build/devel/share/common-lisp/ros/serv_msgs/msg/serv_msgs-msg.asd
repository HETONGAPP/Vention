
(cl:in-package :asdf)

(defsystem "serv_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "he" :depends-on ("_package_he"))
    (:file "_package_he" :depends-on ("_package"))
    (:file "tong" :depends-on ("_package_tong"))
    (:file "_package_tong" :depends-on ("_package"))
  ))