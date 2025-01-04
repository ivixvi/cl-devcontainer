(asdf:defsystem "greeting"
  :components ((:file "main"))
  :in-order-to ((test-op (test-op "greeting/tests"))))

(asdf:defsystem "greeting/tests"
  :depends-on ("greeting" "rove")
  :pathname "tests/"
  :components ((:file "main"))
  :perform (test-op (o c) (symbol-call :greeting/tests :run-test)))
