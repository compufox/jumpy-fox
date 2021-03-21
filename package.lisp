;;;; package.lisp

(defpackage #:jumpy-fox
  (:use #:cl #:gamekit #:gamekit.fistmachine #:gamekit.colors #:gamekit.sprite)
  (:nicknames :jf)
  (:import-from #:gamekit.ui
   :initialize-ui :make-label :with-ui
                  :ui-element :draw-ui)
  (:export :run))
