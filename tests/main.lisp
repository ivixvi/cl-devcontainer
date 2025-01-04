(defpackage :greeting/tests
  (:use :cl
        :rove
        :greeting)
  (:export :run-test))
(in-package :greeting/tests)

(defun run-test () (rove:run :greeting/tests))

(rove:deftest test-hello
  (testing "hello common lisp"
    (ok (string= (greeting:hello "common lisp") "Hello common lisp!"))))

