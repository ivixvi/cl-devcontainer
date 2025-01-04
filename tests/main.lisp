(defpackage :greeting/tests
  (:use :cl
        :rove
        :uiop
        :greeting))
(in-package :greeting/tests)

(rove:deftest test-hello1
  (testing "hello common lisp"
    (ok (string= (greeting:hello "common lisp") "Hello common lisp!")))
   )

(rove:deftest test-hello2
(testing "ng case"
    (ng (string= (greeting:hello "common lisp") "Hello world!")))
 )


(defun run-test ()
  (unless
    (rove:run :greeting/tests)
    (uiop:quit 1)))
