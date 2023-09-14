
(cl:in-package :asdf)

(defsystem "albert_decision_making-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SymbolicPerception" :depends-on ("_package_SymbolicPerception"))
    (:file "_package_SymbolicPerception" :depends-on ("_package"))
  ))