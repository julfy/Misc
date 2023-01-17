(setq-default bidi-display-reordering nil)

(desktop-save-mode 1)
(setq mouse-wheel-scroll-amount '(2))
(setq mouse-wheel-progressive-speed nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'prog-mode-hook 'global-visual-line-mode)

;; font size
(set-face-attribute 'default nil :height 120)

;set default grep command
(setq grep-command "ag --nogroup ")
;disable welcome screen
(setq inhibit-startup-message t)
;disable menu-bar
(menu-bar-mode -1)
;remove toolbar
(tool-bar-mode -1)
;remove window title
(set-frame-parameter nil 'undecorated t)
;enable line numbers
(global-linum-mode t)
; transparency
(add-to-list 'default-frame-alist '(alpha 93 93))

(put 'downcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist `(("." . "~/.emacs.d/backup")))
 '(case-fold-search nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes '(my-theme))
 '(custom-safe-themes
   '("029af32f52d511323f36b803998fe6e8324caabe263c1ec2a878d771512cb07b" default))
 '(diff-switches "-u")
 '(flyspell-default-dictionary "uk")
 '(fringe-mode '(3 . 3) nil (fringe))
 '(gc-cons-threshold (* 8 1024 1024))
 '(global-rainbow-delimiters-mode t)
 '(grep-highlight-matches 'auto)
 '(grep-use-null-device nil)
 '(horizontal-scroll-bar-mode nil)
 '(initial-frame-alist '((fullscreen . maximized)))
 '(ispell-local-dictionary-alist
   '(("ukrainian" "[йцукенгшщзхїфівапролджєячсмитьбю]" "[^йцукенгшщзхїфівапролджєячсмитьбю]" "[']" t
      ("-B" "-d" "ukrainian")
      nil utf-8)))
 '(ispell-program-name "/usr/bin/aspell")
 '(jedi:server-command
   '("/usr/bin/python3" expand-file-name "~/.emacs.d/el-get/jedi/jediepcserver.py"))
 '(line-number-mode nil)
 '(merlin-error-on-single-line t)
 '(merlin-locate-in-new-window 'never)
 '(minimap-window-location 'right)
 '(mmm-submode-decoration-level 0)
 '(ocp-index-override-auto-complete-defaults nil)
 '(package-selected-packages '(rainbow-mode))
 '(paren-mode 'paren nil (paren))
 '(powerline-height nil)
 '(preview-image-type 'png)
 '(python-indent-guess-indent-offset nil)
 '(read-process-output-max (* 1024 1024) t)
 '(require-final-newline nil)
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(spell-command "aspell")
 '(tuareg-begin-indent 0)
 '(tuareg-default-indent 2)
 '(tuareg-if-then-else-indent 0)
 '(tuareg-match-clause-indent 0)
 '(tuareg-match-when-indent 2)
 '(ude-url-browser "firefox")
 '(visual-line-fringe-indicators '(nil nil))
 '(w3m-default-display-inline-images t)
 '(w3m-key-binding 'info))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ebrowse-default ((t nil)))
 '(ebrowse-progress ((t (:background "dark olive green"))))
 '(ebrowse-root-class ((t (:foreground "deep sky blue" :weight bold))))
 '(flycheck-fringe-error ((t (:stipple nil :background "red" :foreground "red"))))
 '(flycheck-fringe-info ((t (:background "lawn green" :foreground "lawn green"))))
 '(flycheck-fringe-warning ((t (:background "gold" :foreground "gold"))))
 '(powerline-active0 ((t (:background "orange" :foreground "black"))))
 '(powerline-active1 ((t (:background "gray15" :foreground "white"))))
 '(powerline-active2 ((t (:background "grey40" :foreground "white"))))
 '(powerline-inactive0 ((t (:background "tan4" :foreground "black"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#f0c000"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#c09000"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#907000"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#f0c000"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#c09000"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#907000"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "red")))))


(global-hl-line-mode)
(set-face-background 'hl-line nil)
(set-face-foreground 'hl-line nil)
(set-face-attribute 'hl-line nil :inherit nil)
(set-face-underline 'hl-line "grey25")

;; PACKAGES ;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/packages")
(let ((default-directory  "~/.emacs.d/el-get/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'package)
(setq package-archives
      '(;; bad cert ("marmalade" . "http://marmalade-repo.org/packages/")
       ("melpa" . "http://melpa.org/packages/")
       ("melpa-stable" . "https://stable.melpa.org/packages/")
       ("gnu" . "http://elpa.gnu.org/packages/")))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;;(url-retrieve
;; "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el"
;; (lambda (s)
;;   (goto-char (point-max))
;;   (eval-print-last-sexp)))

(setq my-el-get-packages
      '(auto-complete
        rainbow-delimiters
        rainbow-mode
        cc-mode
        paredit
        powerline
        tuareg-mode
        yaml-mode
        scala-mode
        rust-mode lsp-mode company-mode ;; https://rust-analyzer.github.io/manual.html#installation
        ;; rustic
        exec-path-from-shell
        jedi
        ;; flycheck adds marmalade to package-archives
        ;; lsp-java
	))

(el-get 'sync my-el-get-packages)
(package-initialize)
;; MODELINE ;;;;;;;;;;;;;;;;;;;

;modeline customize
(require 'powerline)
(setq-default mode-line-format
              '("%e"
                (:eval
                 (let* ((active (powerline-selected-window-active))
                        (mode-line-buffer-id (if active 'mode-line-buffer-id 'mode-line-buffer-id-inactive))
                        (mode-line (if active 'mode-line 'mode-line-inactive))
                        (face0 (if active 'powerline-active0 'powerline-inactive0))
                        (face1 (if active 'powerline-active1 'powerline-inactive1))
                        (face2 (if active 'powerline-active2 'powerline-inactive2))
                        (separator-left (intern (format "powerline-%s-%s"
                                                        (powerline-current-separator)
                                                        (car powerline-default-separator-dir))))
                        (separator-right (intern (format "powerline-%s-%s"
                                                         (powerline-current-separator)
                                                         (cdr powerline-default-separator-dir))))
                        (lhs (list (powerline-raw (if (buffer-modified-p) "✸" " ") face0 'l)
                                   ;; try 🖉 on emacs 28
                                   (powerline-raw (if buffer-read-only "✕" "✎") face0 'l)
                                   (powerline-raw mode-line-mule-info face0 'l)
                                   (powerline-raw "%p /" face0 'l)
                                   (powerline-buffer-size face0 'l)
                                   (powerline-buffer-id `(mode-line-buffer-id ,face0) 'l)
                                   (when (and (buffer-file-name (current-buffer)) vc-mode)
                                     (powerline-raw (format " ⎇ %s "
                                                            (replace-regexp-in-string
                                                             (format "^\s*%s:?-?" (vc-backend buffer-file-name))
                                                             ""
                                                             vc-mode))
                                                    face0 'l))
                                   (funcall separator-left face0 face1)
                                   (when (and (boundp 'erc-track-minor-mode) erc-track-minor-mode)
                                     (powerline-raw erc-modified-channels-object face1 'l))
                                   (powerline-major-mode face1 'l)
                                   (powerline-process face1)
                                   (powerline-minor-modes face1 'l)
                                   (powerline-narrow face1 'l)
                                   (powerline-raw " " face1)
                                   (funcall separator-left face1 face2)
                                   ))
                        (rhs (list (powerline-raw global-mode-string face2 'r)
                                   (funcall separator-right face2 face1)
                                   (unless window-system
                                     (powerline-raw (char-to-string #xe0a1) face1 'l))
                                   (powerline-raw "%3c" face1 'r)
                                   )))
                   (concat (powerline-render lhs)
                           (powerline-fill face2 (powerline-width rhs))
                           (powerline-render rhs))))))
;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'lsp-mode)
(require 'cc-mode)

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

;; clean buffers that haven't been viewed for <delay> days
(setq clean-buffer-list-delay-general 20)
(setq clean-buffer-period (* 60 60 24))
(run-with-timer
 clean-buffer-period
 clean-buffer-period
 (lambda ()
   (message "Cleaning buffers")
   (clean-buffer-list)
   ))

(defun init-utf ()
  (interactive)
  (set-language-environment 'utf-8)
  (set-input-method 'cyrillic-jcuken)
  (toggle-input-method))

;; gc when out of focus
(add-function :after after-focus-change-function
  (defun me/garbage-collect-maybe ()
    (unless (frame-focus-state)
      (garbage-collect))))

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

;; (ring-insert find-tag-marker-ring (point-marker))
;; (pop-tag-mark)

(require 'bar-cursor)
(bar-cursor-mode 10)
(bar-cursor-set-cursor-type 'bar)

;; (global-set-key [\S-right] 'tabbar-forward)
;; (global-set-key [\S-left] 'tabbar-backward)

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

(defmacro register-snippets (id snippets)
  "Creates interactive function to activate snippets"
  `(defun ,id ()
     (interactive)
     (cl-flet
      ((newline (x)
       (insert "\n") (backward-char 1)
       (let* ((cid (current-indentation))
              ;; shenanigans due to current-indentation returning +1 when line is blank
              (n (max 0 (+ x cid (if (< (- (line-end-position) (line-beginning-position)) cid) -1 0)))))
         (insert "\n") (indent-to n) (delete-char 1))))
     (let ((sym (thing-at-point 'symbol))
           (snippets (list ,@(mapcar
                              #'(lambda (e) `(cons ,(car e) #'(lambda (bounds)
                                                                (delete-region (car bounds) (cdr bounds)) ,@`,(cdr e))))
                              snippets))))
       (if (dolist (snipt snippets)
             (if (equal (car snipt) sym)
                 (progn (funcall (cdr snipt) (bounds-of-thing-at-point 'symbol)) (return t))))
         (message "Replaced!")
         (message "Not found"))))))

(defun clear-werrors ()
  "Clears all text overlay modifiers"
  (interactive)
  (mapc #'delete-overlay (overlays-in (point-min) (point-max)))
  (message "Clear overlay") t)

;; (defun esk-pretty-lambdas ()
;;   (font-lock-add-keywords
;;    nil `(("(?\\(lambda\\>\\)"
;;           (0 (progn (compose-region (match-beginning 1) (match-end 1)
;;                                     ,(make-char 'greek-iso8859-7 107))
;;                     nil))))))
;; (add-hook 'prog-mode-hook 'esk-pretty-lambdas)

(defun minimap-toggle ()
  "Toggle minimap"
  (interactive)
  (if (or (not (boundp 'minimap-exists))
	  (not minimap-exists))
      (progn (minimap-create)
	     (setf minimap-exists t)
	     (set-frame-width (selected-frame) 100))
    (progn (minimap-kill)
	   (setf minimap-exists nil)
	   (set-frame-width (selected-frame) 80))))

;; custom keys
(global-set-key [home] 'smart-beginning-of-line)
(global-set-key [end] 'end-of-line)
;; (global-set-key [home] 'beginning-of-line-text)
(global-set-key (kbd "C-n") '(lambda () (interactive) (message (buffer-file-name))))
(global-set-key (kbd "M-<up>") 'backward-paragraph)
(global-set-key (kbd "M-<down>") 'forward-paragraph)
(global-set-key (kbd "S-<up>") '(lambda () "Previous" (interactive) (scroll-down 5)))
(global-set-key (kbd "S-<down>") '(lambda () "Next" (interactive) (scroll-up 5)))
(global-set-key (kbd "C-`") 'other-window)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
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
(global-set-key [f5]'kmacro-start-macro-or-insert-counter)
(global-set-key [f6]'kmacro-end-or-call-macro)

;enable symbol highlight
(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)
(add-hook 'prog-mode-hook 'highlight-symbol-mode)

(require 'rainbow-mode)
(add-hook 'prog-mode-hook 'rainbow-mode)

;enable rainbow parens
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;enable auto complete package
(require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(add-hook 'prog-mode-hook 'auto-complete-mode)
(define-key ac-mode-map (kbd "C-<tab>") 'auto-complete)

;; (E)LISP ;;;;;;;;;;;;;;;;;;;;;;
;; (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
;; (add-hook 'emacs-lisp-mode-hook                  #'enable-paredit-mode)
;; (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook                    #'enable-paredit-mode)
(add-hook 'lisp-mode-hook                        #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook            #'enable-paredit-mode)
(add-hook 'scheme-mode-hook                      #'enable-paredit-mode)

;fix these stupid keybindings
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

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; C/C++ ;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'auto-mode-alist '("\\.d\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; PYTHON ;;;;;;;;;;;;;;;;;;;;;;;;
;; reqs: pip mypy black virtualenv
(require 'python)
(require 'jedi)
(jedi:install-server)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(define-key python-mode-map (kbd "M-.") 'jedi:goto-definition)
(define-key python-mode-map (kbd "M-,") 'jedi:goto-definition-pop-marker)
(define-key python-mode-map (kbd "C-<tab>") 'jedi:complete)

(require 'flycheck)
(setq flycheck-checker-error-threshold 1000)
(setq flycheck-python-pycompile-executable "python3")
(setq flycheck-python-flake8-executable "flake8")
(setq flycheck-flake8-maximum-line-length 100)
(flycheck-define-checker ;; need pip mypy
    python-mypy ""
    ;; :working-directory (lambda (x) "")
    :command ("mypy"
              "--show-error-codes"
              "--follow-imports=silent"
              "--ignore-missing-imports"
              ;; "--no-strict-optional"
              ;; "--allow-redefinition"
              ;; "--disallow-any-explicit"
              "--check-untyped-defs"
              "--disallow-untyped-defs"
              ;; "--python-version" "3.6"
              source-original)
    :error-patterns
    ((error line-start (file-name) ":" line ": error:" (message) line-end))
    :modes python-mode)

(flycheck-define-checker ;; need pip black
    python-black ""
    :command ("black"
              "-S"
              "-l" "100"
              "--diff"
              source-original)
    :error-parser
    (lambda (output checker buffer)
      (let ((errors) (output output) (line-offset 0) (diff-offset 0) (collection-offset 0) (collection nil))
        (dolist (line (cddr (split-string output "\n")))
          (if (not (string-prefix-p "+" line))
              (setq line-offset (+ 1 line-offset)))
          (if (and (string-prefix-p "-" line) (= 0 collection-offset))
              (setq collection-offset line-offset))
          (if (string-prefix-p "+" line)
              (progn
                (if (= 0 collection-offset) (setq collection-offset line-offset))
                (push line collection))
            (if collection
                (progn
                  (push (flycheck-error-new-at
                         (+ diff-offset collection-offset) 0 'warning
                         (string-join (reverse collection) "\n") :checker checker :buffer buffer)
                        errors)
                  (setq collection-offset 0)
                  (setq collection nil))))
          (if (string-prefix-p "@@ -" line)
              (progn
                (setq diff-offset (string-to-number (substring line 4 (string-match ",[0-9]+ " line))))
                (setq line-offset -1))))
        (nreverse errors)))
    :modes python-mode)


(add-to-list 'flycheck-checkers 'python-mypy t)
(add-to-list 'flycheck-checkers 'python-black t)
(flycheck-add-next-checker 'python-pycompile 'python-flake8)
(flycheck-add-next-checker 'python-flake8 'python-black)
(flycheck-add-next-checker 'python-black 'python-mypy)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(add-hook 'python-mode-hook 'flycheck-mode)

(register-snippets python-snippets
  (("pdb" .
    ((insert "import pdb; pdb.set_trace()")))
   ("try" .
    ((insert "try:")
     (newline 4)
     (setq final-pos (point)) (newline -4)
     (insert "except Exception:")
     (newline 4)
     (goto-char final-pos)))
   ))

(define-key python-mode-map (kbd "C-c C-r") 'flycheck-buffer)
(define-key python-mode-map (kbd "C-c C-z") 'flycheck-clear)
(define-key python-mode-map (kbd "C-c C-x") 'flycheck-next-error)
(define-key python-mode-map (kbd "C-t") 'python-snippets)

;; RUST ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'rust-mode)
(add-hook 'rust-mode-hook 'lsp-mode)
(add-hook 'rust-mode-hook (lambda ()
                            (auto-complete-mode -1)
                            (setq lsp-diagnostic-package :none)
                            (setq lsp-headerline-breadcrumb-enable nil)
                            (setq lsp-lens-enable nil)
                            (setq lsp-modeline-diagnostics-enable nil)
                            (setq lsp-modeline-code-actions-enable nil)
                            (lsp)))

(define-key rust-mode-map (kbd "C-<tab>") 'company-complete)
(define-key rust-mode-map (kbd "C-d") 'lsp-describe-thing-at-point)

;; JAVA ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'lsp-java)
;; (add-hook 'java-mode-hook #'lsp)

;; OCAML ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'auto-mode-alist '("\\.ml[ily]?$" . tuareg-mode))
(add-to-list 'auto-mode-alist '("\\.topml$" . tuareg-mode))
(add-to-list 'auto-mode-alist '("\\.atd$" . tuareg-mode))

(register-snippets ocaml-snippets
  (("let" .
    ((insert "let ")
     (setq final-pos (point))
     (insert " =  in")
     (goto-char final-pos)))
   ("bfun" .
    ((insert "begin fun ")
     (setq final-pos (point))
     (insert " ->")
     (newline 2) (newline -2) (insert "end")
     (goto-char final-pos)))
   ("match" .
    ((insert "match ")
     (setq final-pos (point))
     (insert " with")
     (newline 0) (insert "| ")
     (newline 0) (insert "| ")
     (goto-char final-pos)))
   ("bmatch" .
    ((insert "begin match ")
     (setq final-pos (point))
     (insert " with")
     (newline 0) (insert "| ")
     (newline 0) (insert "| ")
     (newline 0) (insert "end")
     (goto-char final-pos)))))

;; (setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
;; (add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
;; (require 'ocp-index)
;; (require 'merlin)

;; (add-hook 'tuareg-mode-hook 'merlin-mode)
;; (add-hook 'tuareg-mode-hook (lambda ()
                              ;; (setq c-syntactic-indentation nil)
                              ;; (electric-indent-local-mode -1)))

;; (eval-after-load 'merlin-mode
  ;; (progn
   ;; (define-key merlin-mode-map (kbd "M-.") 'merlin-locate)
   ;; (define-key merlin-mode-map (kbd "M-,") 'merlin-pop-stack)
   ;; (define-key merlin-mode-map (kbd "C-c C-z") 'clear-werrors)
;; (define-key tuareg-mode-map (kbd "C-t") 'ocaml-snippets)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
