(defpackage :greeting (:use :cl) (:export :hello))
(in-package :greeting)

(defun hello (name) (format nil "Hello ~a!" name))

