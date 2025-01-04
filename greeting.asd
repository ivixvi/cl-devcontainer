(asdf:defsystem "greeting"
  :components ((:file "main"))
  :in-order-to ((test-op (test-op "greeting/test"))))

(asdf:defsystem "greeting/test"
  :depends-on ("greeting" "rove")
  :pathname "tests/"
  :components ((:file "main"))
  :perform (test-op (o c) (symbol-call :greeting/test :run-test)))
