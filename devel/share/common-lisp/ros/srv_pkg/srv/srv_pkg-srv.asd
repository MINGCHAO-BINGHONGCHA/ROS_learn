
(cl:in-package :asdf)

(defsystem "srv_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "define" :depends-on ("_package_define"))
    (:file "_package_define" :depends-on ("_package"))
  ))