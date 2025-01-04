(defpackage :greeting/tests
  (:use :cl
        :rove
        :greeting))
(in-package :greeting/tests)

(rove:deftest test-hello
  (testing "hello common lisp"
    (ok (string= (greeting:hello "common lisp") "Hello common lisp! f"))))

(defun run-test ()
  (unless (rove:run :greeting/tests)
    (error "Tests failed")))
