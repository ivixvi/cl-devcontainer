(asdf:defsystem "greeting"
  :components ((:file "main")))

(asdf:defsystem "greeting/tests"
  :depends-on ("greeting")
  :pathname "tests/"
  :components ((:file "main")))
