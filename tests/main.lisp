(defpackage :greeting/tests
  (:use :cl
        :rove
        :greeting))
(in-package :greeting/tests)

(rove:deftest greeting-test
  (testing "hello common lisp"
    (ok (string= (greeting:hello "common lisp") "Hello common lisp! f"))))

