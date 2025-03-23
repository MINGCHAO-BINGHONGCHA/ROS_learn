
(cl:in-package :asdf)

(defsystem "define_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Carry" :depends-on ("_package_Carry"))
    (:file "_package_Carry" :depends-on ("_package"))
  ))