;; Auto-generated. Do not edit!


(when (boundp 'define_msgs::Carry)
  (if (not (find-package "DEFINE_MSGS"))
    (make-package "DEFINE_MSGS"))
  (shadow 'Carry (find-package "DEFINE_MSGS")))
(unless (find-package "DEFINE_MSGS::CARRY")
  (make-package "DEFINE_MSGS::CARRY"))

(in-package "ROS")
;;//! \htmlinclude Carry.msg.html


(defclass define_msgs::Carry
  :super ros::object
  :slots (_grade _star _info ))

(defmethod define_msgs::Carry
  (:init
   (&key
    ((:grade __grade) "")
    ((:star __star) 0)
    ((:info __info) "")
    )
   (send-super :init)
   (setq _grade (string __grade))
   (setq _star (round __star))
   (setq _info (string __info))
   self)
  (:grade
   (&optional __grade)
   (if __grade (setq _grade __grade)) _grade)
  (:star
   (&optional __star)
   (if __star (setq _star __star)) _star)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; string _grade
    4 (length _grade)
    ;; int64 _star
    8
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _grade
       (write-long (length _grade) s) (princ _grade s)
     ;; int64 _star
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _star (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _star) (= (length (_star . bv)) 2)) ;; bignum
              (write-long (ash (elt (_star . bv) 0) 0) s)
              (write-long (ash (elt (_star . bv) 1) -1) s))
             ((and (class _star) (= (length (_star . bv)) 1)) ;; big1
              (write-long (elt (_star . bv) 0) s)
              (write-long (if (>= _star 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _star s)(write-long (if (>= _star 0) 0 #xffffffff) s)))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _grade
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _grade (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _star
#+(or :alpha :irix6 :x86_64)
      (setf _star (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _star (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get define_msgs::Carry :md5sum-) "4563fd1b6e9431965973ee1f30e624f1")
(setf (get define_msgs::Carry :datatype-) "define_msgs/Carry")
(setf (get define_msgs::Carry :definition-)
      "string grade

int64 star

string info

")



(provide :define_msgs/Carry "4563fd1b6e9431965973ee1f30e624f1")


