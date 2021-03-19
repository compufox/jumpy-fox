;;;; jumpy-fox.asd

(asdf:defsystem #:jumpy-fox
  :description "flappy bird-esque game"
  :author "ava fox"
  :license  "GPLv3"
  :version "0.0.1"
  :serial t
  :depends-on (#:trivial-gamekit #:trivial-gamekit-ui #:trivial-gamekit-fistmachine
               #:trivial-gamekit-colors)
  :components ((:file "package")
               (:file "resources")
               (:module "states" :serial t
                :components
                ())
               (:file "main")))
