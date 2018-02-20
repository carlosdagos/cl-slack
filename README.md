# Slack API for Allegro Common Lisp

## This is a fork

This is a fork of https://github.com/m0cchi/cl-slack

This fork is WIP.

It's intended to be used only in AllegroCL and has no external dependencies.

## Sample code

```lisp
(ql:quickload :cl-slack :silent t)

(defvar token "xxxx-xxx-xxx-xxx")
(defvar channel "C000000")
(defvar client (make-instance 'cl-slack.core:slack-client
                              :token token))

(defun main (&rest argv)
  (declare (ignorable argv))
  (cl-slack.chat:post-message client
                              channel
                              (car argv)
                              '(("as_user" . "true"))))
```

# TODO

- Provide the client with a socket so it's not creating sockets willy-nilly and just reusing one (nice to use with socket pools later)
- postMessage should actually use POST
- include JSON lib (maybe Jonathan?), right now this thing is just returining text responses
- Include support for rich message formatting
