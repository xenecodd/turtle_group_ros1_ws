;; Auto-generated. Do not edit!


(when (boundp 'turtle_interfaces::TurtleFollow)
  (if (not (find-package "TURTLE_INTERFACES"))
    (make-package "TURTLE_INTERFACES"))
  (shadow 'TurtleFollow (find-package "TURTLE_INTERFACES")))
(unless (find-package "TURTLE_INTERFACES::TURTLEFOLLOW")
  (make-package "TURTLE_INTERFACES::TURTLEFOLLOW"))
(unless (find-package "TURTLE_INTERFACES::TURTLEFOLLOWREQUEST")
  (make-package "TURTLE_INTERFACES::TURTLEFOLLOWREQUEST"))
(unless (find-package "TURTLE_INTERFACES::TURTLEFOLLOWRESPONSE")
  (make-package "TURTLE_INTERFACES::TURTLEFOLLOWRESPONSE"))

(in-package "ROS")





(defclass turtle_interfaces::TurtleFollowRequest
  :super ros::object
  :slots (_leader ))

(defmethod turtle_interfaces::TurtleFollowRequest
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

(defclass turtle_interfaces::TurtleFollowResponse
  :super ros::object
  :slots (_status ))

(defmethod turtle_interfaces::TurtleFollowResponse
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

(defclass turtle_interfaces::TurtleFollow
  :super ros::object
  :slots ())

(setf (get turtle_interfaces::TurtleFollow :md5sum-) "78f97197b9a4b2024f26e6a6f492efd7")
(setf (get turtle_interfaces::TurtleFollow :datatype-) "turtle_interfaces/TurtleFollow")
(setf (get turtle_interfaces::TurtleFollow :request) turtle_interfaces::TurtleFollowRequest)
(setf (get turtle_interfaces::TurtleFollow :response) turtle_interfaces::TurtleFollowResponse)

(defmethod turtle_interfaces::TurtleFollowRequest
  (:response () (instance turtle_interfaces::TurtleFollowResponse :init)))

(setf (get turtle_interfaces::TurtleFollowRequest :md5sum-) "78f97197b9a4b2024f26e6a6f492efd7")
(setf (get turtle_interfaces::TurtleFollowRequest :datatype-) "turtle_interfaces/TurtleFollowRequest")
(setf (get turtle_interfaces::TurtleFollowRequest :definition-)
      "string leader
---
string status
")

(setf (get turtle_interfaces::TurtleFollowResponse :md5sum-) "78f97197b9a4b2024f26e6a6f492efd7")
(setf (get turtle_interfaces::TurtleFollowResponse :datatype-) "turtle_interfaces/TurtleFollowResponse")
(setf (get turtle_interfaces::TurtleFollowResponse :definition-)
      "string leader
---
string status
")



(provide :turtle_interfaces/TurtleFollow "78f97197b9a4b2024f26e6a6f492efd7")


