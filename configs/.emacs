;; (add-to-list 'default-frame-alist '(font . "Terminus:size=14"))

;; (add-to-list 'default-frame-alist '(fontset . 
;;     '("fontset-default" cyrillic ("Terminus" . "unicode-bmp"))))

(setq-default bidi-display-reordering nil)

(add-to-list 'load-path "~/emacs")

(desktop-save-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(TeX-mode-hook (quote (auto-fill-mode flyspell-mode my-install-tex-input-helper)))
 '(TeX-output-view-style (quote (("^dvi$" ("^landscape$" "^pstricks$\\|^pst-\\|^psfrag$") "%(o?)dvips -t landscape %d -o && gv %f") ("^dvi$" "^pstricks$\\|^pst-\\|^psfrag$" "%(o?)dvips %d -o && gv %f") ("^dvi$" ("^a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4$" "^landscape$") "%(o?)xdvi %dS -paper a4r -s 0 %d") ("^dvi$" "^a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4$" "%(o?)xdvi %dS -paper a4 %d") ("^dvi$" ("^a5\\(?:comb\\|paper\\)$" "^landscape$") "%(o?)xdvi %dS -paper a5r -s 0 %d") ("^dvi$" "^a5\\(?:comb\\|paper\\)$" "%(o?)xdvi %dS -paper a5 %d") ("^dvi$" "^b5paper$" "%(o?)xdvi %dS -paper b5 %d") ("^dvi$" "^letterpaper$" "%(o?)xdvi %dS -paper us %d") ("^dvi$" "^legalpaper$" "%(o?)xdvi %dS -paper legal %d") ("^dvi$" "^executivepaper$" "%(o?)xdvi %dS -paper 7.25x10.5in %d") ("^dvi$" "." "%(o?)xdvi %dS %d") ("^pdf$" "." "kpdf \"%s.pdf\"") ("^html?$" "." "netscape %o"))))
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(backup-directory-alist (\` (("." . "~/.emacs.d/backup"))))
 '(browse-url-browser-function (quote browse-url-generic))
 '(browse-url-generic-program "firefox")
 '(c-basic-offset 4)
 '(c-default-style (quote ((c-mode . "k&r") (c++-mode . "k&r") (java-mode . "java") (other . "gnu"))))
 '(case-fold-search nil)
 '(column-number-mode t)
 '(compilation-scroll-output t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (mydeef)))
 '(custom-safe-themes (quote ("9132bcf10a0bb4a723c0ae8acbf80be53b661cbec6331bcbdd47d27cbfe9571b" "a479d9d8fdeaac65198a2621e84b9e1759c33704133e9308f64bb9a6276def01" "68d50d6e1ba3ecd4ee91daaa00b36ce291fbe957152c5e44693653d3e547bbd9" "aa006c73cfbaa50e101ce0d5081bde0742f9561e72b78704579f450c662b2140" "99db6b9a6408acb84c08764bf49bbf2aa88e1033076923381189aded9fcdf29e" "a7ba32bec7f453b100bb31cfcc314df195d341a0e72a8a94775a9911ba9160f7" default)))
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
 '(haskell-literate-default (quote latex))
 '(highlight-symbol-mode t t)
 '(imaxima-fnt-size "large")
 '(imaxima-lisp-file (if (eq system-type (quote windows-nt)) (imaxima-subst-char-in-string 92 47 (locate-library "imaxima.lisp")) (locate-library "imaxima.lisp")))
 '(imaxima-maxima-options "--preload-lisp=nil")
 '(imaxima-pt-size 12)
 '(imaxima-use-maxima-mode-flag t)
 '(indent-tabs-mode nil)
 '(inferior-lisp-program "sbcl" t)
 '(ispell-local-dictionary-alist (quote (("ukrainian" "[йцукенгшщзхїфівапролджєячсмитьбю]" "[^йцукенгшщзхїфівапролджєячсмитьбю]" "[']" t ("-B" "-d" "ukrainian") nil utf-8))))
 '(ispell-program-name "/usr/bin/aspell")
 '(load-home-init-file t t)
 '(minimap-window-location (quote right))
 '(mmm-submode-decoration-level 0)
 '(paren-mode (quote paren) nil (paren))
 '(preview-image-type (quote png))
 '(quack-default-program "guile")
 '(quack-fontify-style (quote plt))
 '(quack-pretty-lambda-p nil)
 '(quack-programs (quote ("bigloo" "mzscheme -M r5rs" "bigloo" "csi" "csi -hygienic" "gosh" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "mred -z" "mzscheme" "mzscheme -M errortrace" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi")))
 '(quack-smart-open-paren-p nil)
 '(safe-local-variable-values (quote ((make-backup-files . t) (trim-versions-without-asking))))
 '(scalable-fonts-allowed nil)
 '(scroll-bar-mode (quote right))
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(show-paren-style (quote expression))
 '(spell-command "aspell")
 '(tab-width 8)
 '(tex-dvi-view-command (quote (cond ((eq window-system (quote x)) "kdvi") ((eq window-system (quote w32)) "yap") (t "dvi2tty * | cat -s"))))
 '(transient-mark-mode t)
 '(truncate-lines t)
 '(ude-url-browser "firefox")
 '(undo-limit 2000000)
 '(w3m-default-display-inline-images t)
 '(w3m-key-binding (quote info)))
; '(tab-width 4))

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
  (interactive) (revert-buffer t t))

(setq mouse-wheel-scroll-amount '(2))
(setq mouse-wheel-progressive-speed nil)

;custom keys
(global-set-key [home] 'beginning-of-line-text)
(global-set-key "\C-z" 'shell)
(global-set-key (kbd "M-<up>") 'backward-paragraph)
(global-set-key (kbd "M-<down>") 'forward-paragraph)
(global-set-key (kbd "C-<up>") '(lambda () "Previous" (interactive) (scroll-down 1)))
(global-set-key (kbd "C-<down>") '(lambda () "Next" (interactive) (scroll-up 1)))
(global-set-key (kbd "C-`") 'other-window)
(global-set-key (kbd "C-<tab>") 'auto-complete)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-<PageUp>") 'beginning-of-buffer)
(global-set-key (kbd "C-<PageDown>") 'end-of-buffer)
(global-set-key (kbd "C-<Home>") 'backward-sexp)
(global-set-key (kbd "C-<End>") 'forward-sexp)
(global-set-key (kbd "C-;") 'comment-or-uncomment-region-or-line)
(global-set-key [(control shift up)] 'move-line-up)
(global-set-key [(control shift down)] 'move-line-down)
(global-set-key (kbd "C-x C-a") 'revert-buffer-no-confirm)
;(global-set-key (kbd "C-,") 'slime-complete-symbol)
(global-set-key (kbd "S-<down>")
    (lambda () (interactive) (next-line 5)))
(global-set-key (kbd "S-<up>")
    (lambda () (interactive) (previous-line 5)))

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

(defun magic-sicp ()
  (interactive)
  (cd "~/prj/sicp/")
  (run-scheme "scheme")
  (setq w (selected-window))
  (setq w2 (split-window w 25))
  (find-file "ch*.scm" 1)
  (setq fr (make-frame))
  (select-window (frame-first-window fr))
  (load-library "w3m")
  (w3m-goto-url "file:///usr/src/Doc/Docs4/sicp/book-Z-H-4.html" nil nil)  
  )
  
;(require 'tex-site)
(put 'upcase-region 'disabled nil)
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

(require 'dired-x)
;(mouse-avoidance-mode 'cat-and-mouse)
(msb-mode)

(defun init-utf ()
  (interactive)
  (set-language-environment 'utf-8)
  (set-input-method 'cyrillic-jcuken)
  (toggle-input-method))
  
(require 'bar-cursor)
(bar-cursor-mode 10)

(defun load-project-agame ()
  (interactive)
  (load-library "quack")
  (cd "~/projects/AGame/src/")
  (run-scheme "csi")
  (setq w (selected-window))
;  (setq w2 (split-window w 10))
    (other-window 1)
  (find-file "*.scm" 1)
  (setq fr (make-frame))
  (select-window (frame-first-window fr))
  (eshell)  
  (setq w (selected-window))
  (setq w2 (split-window w 25))
  (dired ".")
  (setq fr (make-frame))
  (select-window (frame-first-window fr))
  (find-file "/usr/include/SDL/SDL.h"))

(require 'psvn)

(setq case-fold-search t)
(defvar in-command nil)
(defvar out-com-input-method nil)

(defun my-process-region (str)
  (let  ((num 0))
    (while (< num (length str))
      (if in-command
	  (let ((ind (string-match "\\s \\|{\\|}" str num)))
	    (if ind
		(progn (setq num (1+ ind))
		       (setq in-command nil)
		       (if out-com-input-method
			   (set-input-method out-com-input-method)))
	      (setq num (length str))))
	(let ((ind (string-match "\\\\" str num)))
	  (if ind
	      (progn (setq num (1+ ind))
		     (setq in-command t)
		     (if current-input-method 
			 (progn 
			   (setq out-com-input-method current-input-method)
			   (set-input-method nil))
		       (setq out-com-input-method nil)))
	    (setq num (length str))))))))

(defun my-tex-input-helper (beg end len)
  (my-process-region (buffer-substring-no-properties beg end)))

(defun my-install-tex-input-helper ()
  (add-hook 'after-change-functions 'my-tex-input-helper))


(defun lisp-add-keywords (face-name keyword-rules)
   (let* ((keyword-list (mapcar #'(lambda (x)
                                    (symbol-name (cdr x)))
                                keyword-rules))
          (keyword-regexp (concat "(\\("
                                  (regexp-opt keyword-list)
                                  "\\)[ \n]")))
     (font-lock-add-keywords 'lisp-mode
                             `((,keyword-regexp 1 ',face-name))))
   (mapc #'(lambda (x)
             (put (cdr x)
                  ;;'scheme-indent-function
                  'common-lisp-indent-function
                  (car x)))
         keyword-rules))
 
(lisp-add-keywords
 'font-lock-keyword-face
 '((0 . mv-let*)
   (0 . letvar)
   (0 . letvar*)
   (nil . deftrf)
   (2 . !~)
   (2 . !.)
   (2 . foreach)
   (2 . forsome)
   (2 . forthis)
   (2 . /.)
   (2 . foreach-child)
   (2 . foreach-collect)
   (0 . aif)
   (0 . awhen)
   ))

(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

;(when window-system
;  (global-set-key (kbd "C-x C-c") 'ask-before-closing))

;;======================================================================================================
;; added by omarchenko

;add pretty lambdas

(defun esk-pretty-lambdas ()
  (font-lock-add-keywords
   nil `(("(?\\(lambda\\>\\)"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))

(add-hook 'prog-mode-hook 'esk-pretty-lambdas)
(add-hook 'prog-mode-hook 'global-visual-line-mode)

;remove toolbar
(tool-bar-mode -1)

;enable line numbers
(global-linum-mode t)

;enable bash auto completion
(require 'bash-completion)
(bash-completion-setup)

;enable symbol highlight
(require 'highlight-symbol)
;(highlight-symbol-mode)
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

;disable this stupid keybindings
(eval-after-load 'paredit
  '(progn
     (define-key paredit-mode-map (kbd "<M-up>") nil)
     (define-key paredit-mode-map (kbd "<M-down>") nil) 
     (define-key paredit-mode-map (kbd "<S-right>") nil) 
     (define-key paredit-mode-map (kbd "<S-left>") nil))
)

;disable welcome screen
(setq inhibit-startup-message t)  

;disable menu-bar
(menu-bar-mode -1)

;enable rainbow parens
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

;enable auto complete package
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs/ac-dict")
(ac-config-default)
;(global-auto-complete-mode t)
;(auto-complete-mode t)
;(auto-complete-mode 1)


;enable enter-and-indent
(global-set-key "\C-m" 'newline-and-indent)

;set default grep command
(setq grep-command "grep -risn ")

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

(setq my-el-get-packages  
      '(tuareg-mode))  
  
(el-get 'sync my-el-get-packages)  

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

(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
(require 'merlin)

(add-hook 'tuareg-mode-hook 'merlin-mode)

(eval-after-load 'merlin-mode
  (progn
   (define-key merlin-mode-map (kbd "M-.") 'merlin-locate)
   (define-key merlin-mode-map (kbd "M-,") 'merlin-pop-stack)))

(add-hook 'buffer-list-update-hook '(lambda () (setq ac-auto-start 2)))

;enable color theming
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-mustang)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#ff8700"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#ff8700"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#ff8700"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#ff8700"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#ff8700"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#ff8700"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#ff8700"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#ff8700"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#ff8700"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#ff191B" :box (:line-width 2 :color "#ff191b" :style released-button))))))

(set-face-attribute 'default nil :height 105)

;; Local Variables:
;; no-byte-compile: t
;; End:
;;; rippedcasts-theme.el ends here


