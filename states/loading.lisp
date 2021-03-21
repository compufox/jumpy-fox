(in-package :jumpy-fox)

(defclass loading (with-ui) ())

(defmethod gamekit:notice-resources ((this loading) &rest resource-names)
  (transition-to 'game))

(defmethod gamekit:post-initialize ((this loading))
  (prepare-resources :fox :objects :tiles)
  (initialize-ui this
    (:loading-text (make-label "Loading..." :position (vec2 10 10) :size 24))))

(defmethod gamekit:draw ((this loading))
  (clear-screen)
  (draw-ui this))
