;; Auto-generated. Do not edit!


(when (boundp 'turtle_control::TurtleCreate)
  (if (not (find-package "TURTLE_CONTROL"))
    (make-package "TURTLE_CONTROL"))
  (shadow 'TurtleCreate (find-package "TURTLE_CONTROL")))
(unless (find-package "TURTLE_CONTROL::TURTLECREATE")
  (make-package "TURTLE_CONTROL::TURTLECREATE"))
(unless (find-package "TURTLE_CONTROL::TURTLECREATEREQUEST")
  (make-package "TURTLE_CONTROL::TURTLECREATEREQUEST"))
(unless (find-package "TURTLE_CONTROL::TURTLECREATERESPONSE")
  (make-package "TURTLE_CONTROL::TURTLECREATERESPONSE"))

(in-package "ROS")





(defclass turtle_control::TurtleCreateRequest
  :super ros::object
  :slots (_num ))

(defmethod turtle_control::TurtleCreateRequest
  (:init
   (&key
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _num (round __num))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; int32 _num
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num
       (write-long _num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtle_control::TurtleCreateResponse
  :super ros::object
  :slots (_status ))

(defmethod turtle_control::TurtleCreateResponse
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass turtle_control::TurtleCreate
  :super ros::object
  :slots ())

(setf (get turtle_control::TurtleCreate :md5sum-) "72760cab38314f5e1f8f9a7e416953a8")
(setf (get turtle_control::TurtleCreate :datatype-) "turtle_control/TurtleCreate")
(setf (get turtle_control::TurtleCreate :request) turtle_control::TurtleCreateRequest)
(setf (get turtle_control::TurtleCreate :response) turtle_control::TurtleCreateResponse)

(defmethod turtle_control::TurtleCreateRequest
  (:response () (instance turtle_control::TurtleCreateResponse :init)))

(setf (get turtle_control::TurtleCreateRequest :md5sum-) "72760cab38314f5e1f8f9a7e416953a8")
(setf (get turtle_control::TurtleCreateRequest :datatype-) "turtle_control/TurtleCreateRequest")
(setf (get turtle_control::TurtleCreateRequest :definition-)
      "int32 num
---
string status
")

(setf (get turtle_control::TurtleCreateResponse :md5sum-) "72760cab38314f5e1f8f9a7e416953a8")
(setf (get turtle_control::TurtleCreateResponse :datatype-) "turtle_control/TurtleCreateResponse")
(setf (get turtle_control::TurtleCreateResponse :definition-)
      "int32 num
---
string status
")



(provide :turtle_control/TurtleCreate "72760cab38314f5e1f8f9a7e416953a8")


