;; Auto-generated. Do not edit!


(when (boundp 'turtle_interfaces::TurtleCreate)
  (if (not (find-package "TURTLE_INTERFACES"))
    (make-package "TURTLE_INTERFACES"))
  (shadow 'TurtleCreate (find-package "TURTLE_INTERFACES")))
(unless (find-package "TURTLE_INTERFACES::TURTLECREATE")
  (make-package "TURTLE_INTERFACES::TURTLECREATE"))
(unless (find-package "TURTLE_INTERFACES::TURTLECREATEREQUEST")
  (make-package "TURTLE_INTERFACES::TURTLECREATEREQUEST"))
(unless (find-package "TURTLE_INTERFACES::TURTLECREATERESPONSE")
  (make-package "TURTLE_INTERFACES::TURTLECREATERESPONSE"))

(in-package "ROS")





(defclass turtle_interfaces::TurtleCreateRequest
  :super ros::object
  :slots (_num ))

(defmethod turtle_interfaces::TurtleCreateRequest
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

(defclass turtle_interfaces::TurtleCreateResponse
  :super ros::object
  :slots (_status ))

(defmethod turtle_interfaces::TurtleCreateResponse
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

(defclass turtle_interfaces::TurtleCreate
  :super ros::object
  :slots ())

(setf (get turtle_interfaces::TurtleCreate :md5sum-) "72760cab38314f5e1f8f9a7e416953a8")
(setf (get turtle_interfaces::TurtleCreate :datatype-) "turtle_interfaces/TurtleCreate")
(setf (get turtle_interfaces::TurtleCreate :request) turtle_interfaces::TurtleCreateRequest)
(setf (get turtle_interfaces::TurtleCreate :response) turtle_interfaces::TurtleCreateResponse)

(defmethod turtle_interfaces::TurtleCreateRequest
  (:response () (instance turtle_interfaces::TurtleCreateResponse :init)))

(setf (get turtle_interfaces::TurtleCreateRequest :md5sum-) "72760cab38314f5e1f8f9a7e416953a8")
(setf (get turtle_interfaces::TurtleCreateRequest :datatype-) "turtle_interfaces/TurtleCreateRequest")
(setf (get turtle_interfaces::TurtleCreateRequest :definition-)
      "int32 num
---
string status
")

(setf (get turtle_interfaces::TurtleCreateResponse :md5sum-) "72760cab38314f5e1f8f9a7e416953a8")
(setf (get turtle_interfaces::TurtleCreateResponse :datatype-) "turtle_interfaces/TurtleCreateResponse")
(setf (get turtle_interfaces::TurtleCreateResponse :definition-)
      "int32 num
---
string status
")



(provide :turtle_interfaces/TurtleCreate "72760cab38314f5e1f8f9a7e416953a8")


