;; Auto-generated. Do not edit!


(when (boundp 'turtle_control::TurtleFollow)
  (if (not (find-package "TURTLE_CONTROL"))
    (make-package "TURTLE_CONTROL"))
  (shadow 'TurtleFollow (find-package "TURTLE_CONTROL")))
(unless (find-package "TURTLE_CONTROL::TURTLEFOLLOW")
  (make-package "TURTLE_CONTROL::TURTLEFOLLOW"))
(unless (find-package "TURTLE_CONTROL::TURTLEFOLLOWREQUEST")
  (make-package "TURTLE_CONTROL::TURTLEFOLLOWREQUEST"))
(unless (find-package "TURTLE_CONTROL::TURTLEFOLLOWRESPONSE")
  (make-package "TURTLE_CONTROL::TURTLEFOLLOWRESPONSE"))

(in-package "ROS")





(defclass turtle_control::TurtleFollowRequest
  :super ros::object
  :slots (_leader ))

(defmethod turtle_control::TurtleFollowRequest
  (:init
   (&key
    ((:leader __leader) "")
    )
   (send-super :init)
   (setq _leader (string __leader))
   self)
  (:leader
   (&optional __leader)
   (if __leader (setq _leader __leader)) _leader)
  (:serialization-length
   ()
   (+
    ;; string _leader
    4 (length _leader)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _leader
       (write-long (length _leader) s) (princ _leader s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _leader
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _leader (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass turtle_control::TurtleFollowResponse
  :super ros::object
  :slots (_status ))

(defmethod turtle_control::TurtleFollowResponse
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

(defclass turtle_control::TurtleFollow
  :super ros::object
  :slots ())

(setf (get turtle_control::TurtleFollow :md5sum-) "78f97197b9a4b2024f26e6a6f492efd7")
(setf (get turtle_control::TurtleFollow :datatype-) "turtle_control/TurtleFollow")
(setf (get turtle_control::TurtleFollow :request) turtle_control::TurtleFollowRequest)
(setf (get turtle_control::TurtleFollow :response) turtle_control::TurtleFollowResponse)

(defmethod turtle_control::TurtleFollowRequest
  (:response () (instance turtle_control::TurtleFollowResponse :init)))

(setf (get turtle_control::TurtleFollowRequest :md5sum-) "78f97197b9a4b2024f26e6a6f492efd7")
(setf (get turtle_control::TurtleFollowRequest :datatype-) "turtle_control/TurtleFollowRequest")
(setf (get turtle_control::TurtleFollowRequest :definition-)
      "string leader
---
string status
")

(setf (get turtle_control::TurtleFollowResponse :md5sum-) "78f97197b9a4b2024f26e6a6f492efd7")
(setf (get turtle_control::TurtleFollowResponse :datatype-) "turtle_control/TurtleFollowResponse")
(setf (get turtle_control::TurtleFollowResponse :definition-)
      "string leader
---
string status
")



(provide :turtle_control/TurtleFollow "78f97197b9a4b2024f26e6a6f492efd7")


