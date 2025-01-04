(defpackage :greeting/tests
  (:use :cl
        :rove
        :uiop
        :greeting)
  (:export :run-test))
(in-package :greeting/tests)

(rove:deftest greeting-test
  (testing "hello common lisp"
    (ok (string= (greeting:hello "common lisp") "Hello common lisp!"))))

(defun run-test ()
  (unless
    (rove:run :greeting/tests)
    (uiop:quit 1)))
