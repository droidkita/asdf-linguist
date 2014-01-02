(in-package :cl-user)
(defpackage asdf-linguist-test-asd
  (:use :cl :asdf))
(in-package :asdf-linguist-test-asd)

(defsystem asdf-linguist-test
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :defsystem-depends-on (:asdf-linguist)
  :components ((:module "t"
                :components
                ((:module "www"
                  :components
                  ((:module "css"
                    :components
                    ((:less "input")))))))))