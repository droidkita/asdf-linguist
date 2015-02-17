(asdf:defsystem asdf-linguist
  :version "0.1"
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :depends-on (:asdf)
  :components ((:module "src"
                :serial t
                :components
                ((:file "base")
                 (:module "lang"
                  :components
                  ((:file "c")))
                 (:module "www"
                  :components
                  ((:file "css")
                   (:file "js")
                   (:module "tools"
                    :components
                    ((:file "yui")))))
                 (:module "build-systems"
                  :components
                  ((:file "make")))
                 (:module "tools"
                  :components
                  ((:module "graphics"
                    :components
                     ((:file "dot")
                      (:file "ditaa")))
                   (:module "text"
                    :components
                     ((:file "flex")
                      (:file "pandoc"))))))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.md"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (load-op asdf-linguist-test))))
