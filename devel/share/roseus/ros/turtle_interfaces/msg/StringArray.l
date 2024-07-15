;; Auto-generated. Do not edit!


(when (boundp 'turtle_interfaces::StringArray)
  (if (not (find-package "TURTLE_INTERFACES"))
    (make-package "TURTLE_INTERFACES"))
  (shadow 'StringArray (find-package "TURTLE_INTERFACES")))
(unless (find-package "TURTLE_INTERFACES::STRINGARRAY")
  (make-package "TURTLE_INTERFACES::STRINGARRAY"))

(in-package "ROS")
;;//! \htmlinclude StringArray.msg.html


(defclass turtle_interfaces::StringArray
  :super ros::object
  :slots (_data ))

(defmethod turtle_interfaces::StringArray
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string[] _data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _data i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get turtle_interfaces::StringArray :md5sum-) "cce5a364f3a3be12c9722c6dcad2fa94")
(setf (get turtle_interfaces::StringArray :datatype-) "turtle_interfaces/StringArray")
(setf (get turtle_interfaces::StringArray :definition-)
      "string[] data
")



(provide :turtle_interfaces/StringArray "cce5a364f3a3be12c9722c6dcad2fa94")


