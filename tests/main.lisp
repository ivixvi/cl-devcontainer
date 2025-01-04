(defpackage :greeting/tests
  (:use :cl
        :rove
        :greeting))
(in-package :greeting/tests)

(rove:deftest test-hello1
  (testing "hello common lisp"
    (ok (string= (greeting:hello "common lisp") "Hello common lisp!"))))

(defun run-test ()
  (unless
    (rove:run :greeting/tests)
    (error "Failed tests.")))
