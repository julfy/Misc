;;;; File: tdl-mode.el
;;;; Date: October 17, 2011
;;;; Author: Derek Newhall
;;;; Version: 2.0
;;;; Installation:
;;;;     To install add the line:
;;;;         (load "/path/to/tdl-mode.el")
;;;;     to your ~/.emacs (for GNU Emacs users) or ~/.xemacs/init.el (for
;;;;     XEmacs users).
;;;; Notes:
;;;;     This file will work for both GNU Emacs users and XEmacs users.
;;;;     To change the default indentation level change *tdl-indent* after
;;;;     loading in this file but before opening a .tdl file or starting up
;;;;     tdl-mode. Example:
;;;;         (load "$MOUSETRAP_HOME/emacs/tdl-mode.el")
;;;;         (setq *tdl-indent* 4)


(defconst tdl-keywords
  '("active" "after" "agent" "any" "around"
    "aspect" "attribute" "before" "bport" "below" "break"
    "cflow" "channel" "choice" "class" "coerce" "const"
    "constructor" "continue" "current" "create" "delete" "destructor"
    "do" "else" "entry" "enum" "exception" "exit" "extends"
    "extract" "false" "for" "goto" "guard" "handle"
    "if" "implements" "include" "input" "interface" "literals"
    "mod" "nextstate" "operation"
    "output" "own" "package" "part" "pointcut"
    "port" "priority" "pset" "ref" "region" "rem" "required"
    "reset" "return" "save" "set"
    "signallist" "start" "state" "stereotype" "stop" "struct"
    "switch" "synch" "syntype" "target" "template" "then"
    "throw" "timer" "type" "use" "void" "while" "within" "xor")
  "Major keywords for the TDL language.")


(defconst tdl-intermediate-keywords
  '("out" "in" "from" "to" "via" "with")
  "Intermediate keywords for the TDL language.")


(defconst tdl-constants
  '("now" "true" "false" "signal" "void" "this"
    "self" "parent" "offspring" "sender")
"Constants and special variables for the TDL language.")


(defvar tdl-font-lock-defaults
  (list
     `(,(regexp-opt tdl-keywords 'words) . font-lock-keyword-face)
     `(,(regexp-opt tdl-intermediate-keywords 'words) . font-lock-builtin-face)
     `(,(regexp-opt tdl-constants 'words) . font-lock-function-name-face)
     ;'("\".*\"" . font-lock-string-face)
     '("<<.*>>" . font-lock-type-face)
     '("[A-Za-z_][A-Za-z0-9_]*" . font-lock-variable-name-face)
     '("[0-9]+" . font-lock-constant-face))
  "Regexps for the font faces for TDL syntax highlighting.")


(defun tdl-faces ()
  "Overwrites the inherited C-mode syntax colors."
  (custom-set-faces
    '(font-lock-variable-name-face ((t (:foreground "black"))))
    '(font-lock-function-name-face ((t (:foreground "steelblue"))))
    '(font-lock-string-face ((t (:foreground "DarkGoldenrod"))))
    '(font-lock-comment-face ((t (:foreground "gray50"))))
    '(font-lock-constant-face ((t (:foreground "red"))))
    '(font-lock-type-face ((t (:foreground "green4"))))
    '(font-lock-keyword-face ((t (:bold t :foreground "blue"))))
    '(font-lock-builtin-face ((t (:foreground "DarkOrchid"))))))


(defvar *tdl-indent* 0
    "If this variable is 0 then tabs will be used for indentation, otherwise that number of spaces will be used instead.")

(define-derived-mode tdl-mode c-mode ;fundemental-mode
  "TDL file" "A mode for editing TDL files"
  (tdl-faces)
  (if (= *tdl-indent* 0)
      (progn
	(set (make-local-variable 'indent-tabs-mode) t)
	(set (make-local-variable 'c-basic-offset) tab-width))
      (progn
	(set (make-local-variable 'indent-tabs-mode) nil)
	(set (make-local-variable 'c-basic-offset) *tdl-indent*)))
  (setq font-lock-defaults '(tdl-font-lock-defaults))
  ;(setq comment-start "//")
  ;(setq comment-end "")
  ;(setq block-comment-start "/*")
  ;(setq block-comment-end "*/")
  (if (fboundp 'show-paren-mode)
      (show-paren-mode t) ; GNU Emacs
      (paren-set-mode 'paren)) ; XEmacs
)

(add-to-list 'auto-mode-alist '("\\.tdl.*" . tdl-mode))

(provide 'tdl-mode)
