(setq-default bidi-display-reordering nil)

(add-to-list 'load-path "~/emacs")

(desktop-save-mode 1)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (\` (("." . "~/.emacs.d/backup"))))
 '(browse-url-browser-function (quote browse-url-generic))
 '(browse-url-generic-program "firefox")
 '(c-basic-offset 4)
 '(c-default-style
   (quote
    ((c-mode . "k&r")
     (c++-mode . "k&r")
     (java-mode . "java")
     (other . "gnu"))))
 '(case-fold-search nil)
 '(column-number-mode t)
 '(compilation-scroll-output t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (mydeef)))
 '(custom-safe-themes
   (quote
    ("9132bcf10a0bb4a723c0ae8acbf80be53b661cbec6331bcbdd47d27cbfe9571b" default)))
 '(default-input-method "ukrainian-computer-ext")
 '(default-justification (quote full))
 '(diff-switches "-u")
 '(dired-guess-shell-alist-user (quote ((".*\\.djvu$" "djview ? &"))))
 '(dired-listing-switches "-alDh")
 '(flyspell-default-dictionary "uk")
 '(font-lock-maximum-decoration t)
 '(font-lock-support-mode (quote jit-lock-mode))
 '(global-font-lock-mode t)
 '(global-hl-line-mode nil)
 '(global-rainbow-delimiters-mode t)
 '(grep-highlight-matches (quote auto))
 '(grep-use-null-device nil)
 '(haskell-literate-default (quote latex))
 '(highlight-symbol-mode t t)
 '(indent-tabs-mode nil)
 '(inferior-lisp-program "sbcl")
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(ispell-local-dictionary-alist
   (quote
    (("ukrainian" "[йцукенгшщзхїфівапролджєячсмитьбю]" "[^йцукенгшщзхїфівапролджєячсмитьбю]" "[']" t
      ("-B" "-d" "ukrainian")
      nil utf-8))))
 '(ispell-program-name "/usr/bin/aspell")
 '(load-home-init-file t t)
 '(merlin-error-on-single-line t)
 '(merlin-locate-in-new-window (quote never))
 '(minimap-window-location (quote right))
 '(mmm-submode-decoration-level 0)
 '(ocp-index-override-auto-complete-defaults nil)
 '(paren-mode (quote paren) nil (paren))
 '(preview-image-type (quote png))
 '(require-final-newline nil)
 '(safe-local-variable-values
   (quote
    ((make-backup-files . t)
     (trim-versions-without-asking))))
 '(scalable-fonts-allowed nil)
 '(scroll-bar-mode (quote right))
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(show-paren-style (quote expression))
 '(spell-command "aspell")
 '(tab-width 4)
 '(tabbar-mode t)
 '(transient-mark-mode t)
 '(truncate-lines t)
 '(tuareg-begin-indent 0)
 '(tuareg-default-indent 2)
 '(tuareg-if-then-else-indent 0)
 '(tuareg-match-clause-indent 0)
 '(tuareg-match-when-indent 2)
 '(ude-url-browser "firefox")
 '(undo-limit 2000000)
 '(w3m-default-display-inline-images t)
 '(w3m-key-binding (quote info)))

(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive)
  (revert-buffer t t)
  (message "Revert buffer"))

(defun kill-buffer-and-its-windows (buffer)
  "Kill BUFFER and delete its windows.  Default is `current-buffer'.
BUFFER may be either a buffer or its name (a string)."
  (interactive (list (read-buffer "Kill buffer: " (current-buffer) 'existing)))
  (setq buffer  (get-buffer buffer))
  (if (buffer-live-p buffer)            ; Kill live buffer only.
      (let ((wins  (get-buffer-window-list buffer nil t))) ; On all frames.
        (when (and (buffer-modified-p buffer)
                   (fboundp '1on1-flash-ding-minibuffer-frame))
          (1on1-flash-ding-minibuffer-frame t)) ; Defined in `oneonone.el'.
        (when (kill-buffer buffer)      ; Only delete windows if buffer killed.
          (dolist (win  wins)           ; (User might keep buffer if modified.)
            (when (window-live-p win)
              ;; Ignore error, in particular,
              ;; "Attempt to delete the sole visible or iconified frame".
              (condition-case nil (delete-window win) (error nil))))))
    (when (interactive-p)
      (error "Cannot kill buffer.  Not a live buffer: `%s'" buffer))))

(setq mouse-wheel-scroll-amount '(2))
(setq mouse-wheel-progressive-speed nil)

;custom keys
(global-set-key [home] 'beginning-of-line-text)
(global-set-key "\C-z" 'shell)
(global-set-key (kbd "M-<up>") 'backward-paragraph)
(global-set-key (kbd "M-<down>") 'forward-paragraph)
(global-set-key (kbd "S-<up>") '(lambda () "Previous" (interactive) (scroll-down 5)))
(global-set-key (kbd "S-<down>") '(lambda () "Next" (interactive) (scroll-up 5)))
(global-set-key (kbd "C-`") 'other-window)
(global-set-key (kbd "C-<tab>") 'auto-complete)
(global-set-key "\t" 'auto-complete)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-<PageUp>") 'beginning-of-buffer)
(global-set-key (kbd "C-<PageDown>") 'end-of-buffer)
(global-set-key (kbd "C-<Home>") 'backward-sexp)
(global-set-key (kbd "C-<End>") 'forward-sexp)
(global-set-key (kbd "C-;") 'comment-or-uncomment-region-or-line)
(global-set-key [(control shift up)] 'move-line-up)
(global-set-key [(control shift down)] 'move-line-down)
(global-set-key (kbd "C-<down>") (lambda () (interactive) (next-line 5)))
(global-set-key (kbd "C-<up>") (lambda () (interactive) (previous-line 5)))
(global-set-key (kbd "C-<right>") 'forward-word)
(global-set-key (kbd "C-<left>") 'backward-word)
(global-set-key (kbd "C-M-r") 'revert-buffer-no-confirm)
(global-set-key (kbd "C-x C-k") 'kill-buffer-and-its-windows)

(load-library "ukr-ext")

(put 'downcase-region 'disabled nil)
(add-to-list 'auto-mode-alist '("\\.d\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(require 'cc-mode)

(require 'tabbar)
(tabbar-mode)

;; (global-set-key "\C-\M-y" 'mark-sexp)
;; (global-set-key [?\M-\C-'] 'kill-whole-line)
;; (global-set-key [?\M-+] 'delete-pair)
;; (global-set-key [C-backspace] 'c-hungry-backspace)
;; (global-set-key [?\M-s] 'replace-string)
;; (global-set-key [?\M-n] 'replace-regexp)
;; (global-set-key [?\C-.] 'call-last-kbd-macro)
(global-set-key [\S-right] 'tabbar-forward)
(global-set-key [\S-left] 'tabbar-backward)

(defun init-utf ()
  (interactive)
  (set-language-environment 'utf-8)
  (set-input-method 'cyrillic-jcuken)
  (toggle-input-method))

; smart HOME button. Really smart.
(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.
  Move point to the first non-whitespace character on this line.
  If point was already at that position, move point to beginning of line."
  (interactive) ; Use  (interactive "^") in Emacs 23 to make shift-select work
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

(global-set-key [home] 'smart-beginning-of-line)

(require 'bar-cursor)
(bar-cursor-mode 10)

(setq case-fold-search t)
(defvar in-command nil)
(defvar out-com-input-method nil)

(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

;; (defun esk-pretty-lambdas ()
;;   (font-lock-add-keywords
;;    nil `(("(?\\(lambda\\>\\)"
;;           (0 (progn (compose-region (match-beginning 1) (match-end 1)
;;                                     ,(make-char 'greek-iso8859-7 107))
;;                     nil))))))
;; (add-hook 'prog-mode-hook 'esk-pretty-lambdas)
(add-hook 'prog-mode-hook 'global-visual-line-mode)

;remove toolbar
(tool-bar-mode -1)

;enable line numbers
(global-linum-mode t)

(global-set-key [f5]'kmacro-start-macro-or-insert-counter)
(global-set-key [f6]'kmacro-end-or-call-macro)

;enable bash auto completion
(require 'bash-completion)
(bash-completion-setup)

;enable symbol highlight
(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

(add-hook 'prog-mode-hook 'highlight-symbol-mode)
(add-hook 'prog-mode-hook 'auto-complete-mode)

;enable paredit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook                  #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook                        #'enable-paredit-mode)
(add-hook 'lisp-mode-hook                        #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook            #'enable-paredit-mode)
(add-hook 'scheme-mode-hook                      #'enable-paredit-mode)

;fix this stupid keybindings
(eval-after-load 'paredit
  '(progn
     (define-key paredit-mode-map (kbd "<C-M-left>") 'paredit-forward-barf-sexp)
     (define-key paredit-mode-map (kbd "<C-M-right>") 'paredit-forward-slurp-sexp)
     (define-key paredit-mode-map (kbd "<M-up>") nil)
     (define-key paredit-mode-map (kbd "<M-down>") nil)
     (define-key paredit-mode-map (kbd "<S-right>") nil)
     (define-key paredit-mode-map (kbd "<S-left>") nil)
     (define-key paredit-mode-map (kbd "<C-left>") nil)
     (define-key paredit-mode-map (kbd "<C-right>") nil)
     ))

;disable welcome screen
(setq inhibit-startup-message t)

;disable menu-bar
(menu-bar-mode -1)

;enable rainbow parens
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

;enable auto complete package
(require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/emacs/ac-dict")
;; (ac-config-default)

;set default grep command
(setq grep-command "ag --nogroup ")

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

(setq my-el-get-packages
      '(tuareg-mode
        ))

(el-get 'sync my-el-get-packages)

;; (defun minimap-toggle ()
;;   "Toggle minimap"
;;   (interactive)
;;   (if (or (not (boundp 'minimap-exists))
;; 	  (not minimap-exists))
;;       (progn (minimap-create)
;; 	     (setf minimap-exists t)
;; 	     (set-frame-width (selected-frame) 100))
;;     (progn (minimap-kill)
;; 	   (setf minimap-exists nil)
;; 	   (set-frame-width (selected-frame) 80))))

;; (global-set-key "\C-m" 'minimap-toggle)

(add-to-list 'auto-mode-alist '("\\.ml[ily]?$" . tuareg-mode))
(add-to-list 'auto-mode-alist '("\\.topml$" . tuareg-mode))

(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
(require 'ocp-index)
(require 'merlin)

(defmacro make-snippet (name cmds)
  `(cons ,name (lambda (bounds)
      (let ((pos1 (car bounds))
            (pos2 (cdr bounds)))
        (delete-region pos1 pos2) ,@cmds))))
(defun run-snippet ()
  (interactive)
  (cl-flet ((newline (x) (let ((cid (current-indentation))) (insert "\n") (indent-to (max 0 (+ cid x))))))
   (let ((sym (thing-at-point 'symbol))
         (snippets (list
                    (make-snippet "let"
                                  ((insert "let ")
                                   (setq final-pos (point))
                                   (insert " =  in")
                                   (goto-char final-pos)))
                    (make-snippet "bfun"
                                  ((insert "begin fun ")
                                   (setq final-pos (point))
                                   (insert " ->")
                                   (newline 2) (newline -2) (insert "end")
                                   (goto-char final-pos)))
                    (make-snippet "match"
                                  ((insert "match ")
                                   (setq final-pos (point))
                                   (insert " with")
                                   (newline 0) (insert "| ")
                                   (newline 0) (insert "| ")
                                   (goto-char final-pos)))
                    (make-snippet "bmatch"
                                  ((insert "begin match ")
                                   (setq final-pos (point))
                                   (insert " with")
                                   (newline 0) (insert "| ")
                                   (newline 0) (insert "| ")
                                   (newline 0) (insert "end")
                                   (goto-char final-pos)))
                    )))
     (if (dolist (snipt snippets)
           (if (equal (car snipt) sym)
               (progn (funcall (cdr snipt) (bounds-of-thing-at-point 'symbol)) (return t))))
         (message "Replaced!")
       (message "Not found")))))

;; (global-unset-key (kbd "C-t"))
;; (global-set-key (kbd "C-t") 'run-snippet)
;; (eval-after-load 'merlin-mode
;;   (progn
;;     (define-key merlin-mode-map (kbd "C-t") 'run-snippet)))


(add-hook 'tuareg-mode-hook 'merlin-mode)
(add-hook 'tuareg-mode-hook (lambda ()
                              (setq c-syntactic-indentation nil)
                              (electric-indent-local-mode -1)))

(defun merlin-clear-werrors ()
  (interactive)
  (mapc #'delete-overlay (overlays-in (point-min) (point-max)))
  (message "Clear overlay") t)

(eval-after-load 'merlin-mode
  (progn
   (define-key merlin-mode-map (kbd "M-.") 'merlin-locate)
   (define-key merlin-mode-map (kbd "M-,") 'merlin-pop-stack)
   (define-key merlin-mode-map (kbd "C-c C-z") 'merlin-clear-werrors)
   (define-key merlin-mode-map (kbd "C-t") 'run-snippet)))

;; (add-to-list 'load-path "/home/bogdan/.opam/4.02.3/share/emacs/site-lisp")

;; (add-hook 'buffer-list-update-hook '(lambda ()
  ;; (setq ac-auto-start nil)
  ;; (setq ac-delay 3600)
  ;; (setq ac-menu-height 20)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ebrowse-default ((t nil)))
 '(ebrowse-progress ((t (:background "dark olive green"))))
 '(ebrowse-root-class ((t (:foreground "deep sky blue" :weight bold))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "sandy brown"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "chocolate"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "goldenrod"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "gold"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "dark khaki"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "red"))))
 '(tabbar-default-face ((t (:inherit variable-pitch :background "gray72" :foreground "gray20" :height 0.8)))))
(put 'erase-buffer 'disabled nil)
