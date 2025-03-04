;; Auto-generated. Do not edit!


(when (boundp 'srv_pkg::define)
  (if (not (find-package "SRV_PKG"))
    (make-package "SRV_PKG"))
  (shadow 'define (find-package "SRV_PKG")))
(unless (find-package "SRV_PKG::DEFINE")
  (make-package "SRV_PKG::DEFINE"))
(unless (find-package "SRV_PKG::DEFINEREQUEST")
  (make-package "SRV_PKG::DEFINEREQUEST"))
(unless (find-package "SRV_PKG::DEFINERESPONSE")
  (make-package "SRV_PKG::DEFINERESPONSE"))

(in-package "ROS")





(defclass srv_pkg::defineRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod srv_pkg::defineRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass srv_pkg::defineResponse
  :super ros::object
  :slots (_sum ))

(defmethod srv_pkg::defineResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass srv_pkg::define
  :super ros::object
  :slots ())

(setf (get srv_pkg::define :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get srv_pkg::define :datatype-) "srv_pkg/define")
(setf (get srv_pkg::define :request) srv_pkg::defineRequest)
(setf (get srv_pkg::define :response) srv_pkg::defineResponse)

(defmethod srv_pkg::defineRequest
  (:response () (instance srv_pkg::defineResponse :init)))

(setf (get srv_pkg::defineRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get srv_pkg::defineRequest :datatype-) "srv_pkg/defineRequest")
(setf (get srv_pkg::defineRequest :definition-)
      "int32 num1
int32 num2

---
int32 sum
")

(setf (get srv_pkg::defineResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get srv_pkg::defineResponse :datatype-) "srv_pkg/defineResponse")
(setf (get srv_pkg::defineResponse :definition-)
      "int32 num1
int32 num2

---
int32 sum
")



(provide :srv_pkg/define "4781436a0c2affec8025955a6041e481")


