
(cl:in-package :asdf)

(defsystem "turtle_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TurtleCreate" :depends-on ("_package_TurtleCreate"))
    (:file "_package_TurtleCreate" :depends-on ("_package"))
    (:file "TurtleFollow" :depends-on ("_package_TurtleFollow"))
    (:file "_package_TurtleFollow" :depends-on ("_package"))
  ))