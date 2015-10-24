(require 'cl-slack.core "./core.lisp")

(provide 'cl-slack.rtm)

(defpackage :cl-slack.rtm
  (:use :cl)
  (:export start))

(in-package :cl-slack.rtm)

(defmethod start ((client cl-slack.core:slack-client)
                  (optionals list))
  (cl-slack.core:send "rtm.start"
                      (format nil "?token=~A~A"
                              (cl-slack.core:token client)
                              (cl-slack.core:to-param optionals))))

