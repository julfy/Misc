;; <julfy did this

(eval-when-compile
  (require 'cl))

(defvar *grammarer-defn-stack* nil)
(defvar *grammarer-def-data* nil)
(defvar *grammarer-file* nil)

(global-set-key (kbd "M-.") 'grammarer-go-to-def)
(global-set-key (kbd "M-,") 'grammarer-go-back)

(cl-defun grammarer-util-member (what where &key (test #'equal))
  (dolist (item where)
    (when (funcall test what item)
       (return-from grammarer-util-member item)))
  nil)

(defun grammarer-parse-current-buffer ()
  (unless (equal *grammarer-file* (buffer-file-name (current-buffer)))
    (setq *grammarer-file* (buffer-file-name (current-buffer)))
    (setq *grammarer-def-data* nil)
    (setq *grammarer-defn-stack* nil))
  (unless *grammarer-def-data*
    (with-current-buffer (current-buffer)
      (^s^grammar-parser *grammarer-file*)))
  *grammarer-def-data*)

(defun grammarer-find-def (ident)
  (grammarer-util-member ident
                         *grammarer-def-data*
                         :test #'(lambda (x y)
                                   (equal x (car y)))))
 
(defun grammarer-go-to-def ()
  (interactive)
  (grammarer-parse-current-buffer)
  (let* ((def (grammarer-find-def (thing-at-point 'symbol))))
    (if def
        (progn
          (push (point) *grammarer-defn-stack*)
          (goto-char (cdr def))
          (message "Jumped to \"%s\"." (car def)))
      (message "Entity not found."))))

(defun grammarer-go-back ()
  (interactive)
  (if *grammarer-defn-stack*
      (goto-char (pop *grammarer-defn-stack*))
      (message "Defn stack is empty.")))

;; ---------------------------------------------------------
;; PARSER
;; ---------------------------------------------------------

(defvar ^s^valid-ident-chars nil)
(setq ^s^valid-ident-chars '(?= ?& ?? ?* ?^ ?% ?$ ?@ ?! ?/
                               ?~ ?> ?< ?. ?- ?_ ?+ ?q ?w ?e ?r ?t ?y ?u ?i
                               ?o ?p ?a ?s ?d ?f ?g ?h ?j ?k
                               ?l ?z ?x ?c ?v ?b ?n ?m ?: ?1
                               ?2 ?3 ?4 ?5 ?6 ?7 ?8 ?9 ?0))
(defvar ^s^whitespace nil)
(setq ^s^whitespace '(?\n ?\t ?\v ?\s ?\r))

(defvar ^s^c-tkn nil)
(defvar ^s^parser-stack nil)
(defvar ^s^token-pos 0)
(defvar ^s^stream-pos 0)

(defun ^s^grammar-parser (file)
  (setq ^s^stream-pos 0)
  (with-temp-buffer
    (insert-file-contents file)
    (let ((stream (coerce (buffer-string) 'list)))
      (do ((flag nil))
          (flag)
        (^s^read)
        (if (not ^s^c-tkn)
          (setq flag t)
          (^s^grammar stream))))))

(defmacro ^s^read ()
  `(setq ^s^c-tkn (or (pop ^s^parser-stack) (^s^get-token stream))))

(defmacro ^s^unread ()
  `(push ^s^c-tkn ^s^parser-stack))

(defun ^s^grammar (stream)
  (let ((id ^s^c-tkn)
        (pos ^s^token-pos))
    (do () ((not ^s^c-tkn))
        (when (equal (^s^read) "-->")
          (push (cons id (- pos (length id))) *grammarer-def-data*))
        (setq id ^s^c-tkn)
        (setq pos ^s^token-pos))))

(defmacro ^s^read-char ()
  `(nth (1- (incf ^s^stream-pos)) stream))

(defmacro ^s^unread-char ()
  `(decf ^s^stream-pos))

(defmacro push-back (what where)
  `(setq ,where (append ,where (list ,what))))

(defun ^s^get-token (stream)
  (let ((token nil) (screen nil) (end nil))
    (block token-loop
     (do ((c (^s^read-char) (^s^read-char) 'the-end))
         ((not (characterp c)) (^s^unread-char))
       (cond
        ((member c ^s^whitespace) ;; whitespace
         (when token
           (setq end ^s^stream-pos)
           (return-from token-loop)))
        ;; ((eq ?\; c) ;; comment
        ;;  (do ((c (^s^read-char) (^s^read-char)))
        ;;      ((or (not (characterp c)) (eq ?\n c)))))
        ((eq ?/ c) ;; block comment
         (setq c (^s^read-char))
         (if (eq ?* c)
             (block skip-comment-loop
               (do ((c (^s^read-char) (^s^read-char)))
                   ((not (characterp c)) (^s^unread-char))
                 (when (eq ?* c)
                   (setq c (^s^read-char))
                   (if (eq ?/ c)
                       (return-from skip-comment-loop)
                       (if (characterp c) (^s^unread-char))))))
              (push-back c token)))
        ((or (member c ^s^valid-ident-chars) screen) ;; ident
         (push-back c token)
         (when screen
           (setq screen nil)))
        (t (setq end ^s^stream-pos) ;; single char lexemes
           (if (and (characterp c) token)
             (^s^unread-char)
             (push-back c token))
           (return-from token-loop)))))
    (setq ^s^token-pos (or end 0))
    (if token
        (coerce token 'string)
        nil)))
