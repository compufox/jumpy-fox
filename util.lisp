(in-package :jumpy-fox)

(declaim (inline clear-screen))

(defun clear-screen (&optional (color gamekit.colors:+white+))
  (draw-rect gamekit::+origin+ 800 600 :fill-paint color))

