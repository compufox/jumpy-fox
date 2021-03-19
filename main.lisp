;;;; main.lisp

(in-package #:jumpy-fox)

(defgame jumpy-fox (fistmachine) ()
  (:viewport-title "jumpy fox")
  (:prepare-resources nil)
  (:default-initargs :initial-state 'loading))

(defun run (&optional debug)
  (gamekit:start 'jumpy-fox)
  (when debug
    (defvar *mouse-position* (vec2 0 0))
    (bind-cursor (l (setf *mouse-position* (vec2 % %%))))
    (bind-button :mouse-left :pressed
                 (l (format t "mouse position: ~A~%" *mouse-position*)))))
