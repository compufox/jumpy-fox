(in-package :jumpy-fox)

(defclass game (with-ui) ())

(defmethod gamekit:post-initialize ((this game)))


(defmethod gamekit:draw ((this game))
  (draw-sprites *player* *coin*))
