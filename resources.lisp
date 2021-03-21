;;;; resources.lisp

(in-package :jumpy-fox)

(register-resource-package :keyword
  (asdf:system-relative-pathname :jumpy-fox "assets/"))

(define-image :fox "sprites/fox.png" :use-nearest-interpolation t)
(define-image :objects "sprites/objects.png" :use-nearest-interpolation t)
(define-image :tiles "sprites/tiles.png" :use-nearest-interpolation t)

(defvar *fox-spritesheet*
  (make-spritesheet
   :fox
   (list :idle1 (vec2 0 48) (vec2 17 16))
   (list :idle2 (vec2 17 48) (vec2 17 16))
   (list :idle3 (vec2 34 48) (vec2 17 16))
   (list :idle4 (vec2 51 48) (vec2 17 16))
   (list :idle5 (vec2 68 48) (vec2 17 16))
   (list :idle6 (vec2 0 32) (vec2 17 16))
   (list :idle7 (vec2 17 32) (vec2 17 16))
   (list :idle8 (vec2 34 32) (vec2 17 16))
   (list :idle9 (vec2 51 32) (vec2 17 16))

   (list :run1 (vec2 0 16) (vec2 19 16))
   (list :run2 (vec2 19 16) (vec2 19 16))
   (list :run3 (vec2 38 16) (vec2 19 16))
   (list :run4 (vec2 57 16) (vec2 19 16))
   (list :run5 (vec2 0 0) (vec2 19 16))
   (list :run6 (vec2 19 0) (vec2 19 16))
   (list :run7 (vec2 38 0) (vec2 19 16))
   (list :run8 (vec2 57 0) (vec2 19 16))))

(defvar *object-spritesheet*
  (make-spritesheet
   :objects
   (list :coin1 (vec2 0 64) (vec2 16 16))
   (list :coin2 (vec2 16 64) (vec2 16 16))
   (list :coin3 (vec2 32 64) (vec2 16 16))
   (list :coin4 (vec2 48 64) (vec2 16 16))))
                    

(defparameter *player*
  (make-sprite *fox-spritesheet* :frames '((:idle :idle1 :idle2 :idle3 :idle4 :idle5 :idle6 :idle7 :idle8 :idle9)
                                           (:run :run1 :run2 :run3 :run4 :run5 :run6 :run7 :run8))
                                 :animate t :scale (vec2 10 10) :state :idle
                                 :frame-length 4))

(defparameter *coin*
  (make-sprite *object-spritesheet* :frames '(:coin1 :coin2 :coin3 :coin4 :coin3 :coin2)
                                    :coordinates (vec2 250 100)
                                    :animate t :scale (vec2 5 5) :frame-length 10))
