(defpackage :greeting/test
  (:use :cl
        :rove
        :greeting))
(in-package :greeting/test)

(rove:deftest test-hello
  (testing "hello common lisp"
    (ok (string= (greeting:hello "common lisp") "Hello common lisp! f"))))

(defun run-test () (rove:run :greeting/test))
