;;;
;;; Mustang emacs theme by Jimmy Selgen Nielsen
;;;
;;; Inspired by:
;;; Mustang color theme for Vim by Henrique C. Alves:
;;; http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484
;;;

(defun color-theme-mustang ()
  (interactive)
  (color-theme-install
    '(mustang ((background-color . "#222222")
               (foreground-color . "#dadada")
               (background-mode . dark)
               (cursor-color . "#bdbdbd")
               (mouse-color . "sienna1"))
              (default ((t (:background "#202020"))))
              (mode-line ((t (:foreground "#939395" :background "#444444"))))
              (linum ((t (:foreground "#717c7e"))))
              (hl-line ((t (:background "#2d2d2d"))))
              (fringe ((t (:background "#000000"))))
              (border ((t (:background "#000000"))))
              (left-margin ((t (:background "#000000"))))
              (region ((t (:background "#758096" :foreground "#e6e6e6"))))
              (ido-subdir ((t (:foreground "#8F9D6A"))))
              (ido-first-match ((t (:foreground "#8F9D6A"))))
              (ido-only-match ((t (:foreground "#8F9D6A"))))
              (font-lock-builtin-face ((t (:foreground "#7e8aa2"))))
              (font-lock-comment-face ((t (:foreground "#808080"))))
              (font-lock-function-name-face ((t (:foreground "#ffffff" :bold t))))
              (font-lock-keyword-face ((t (:foreground "#ff9800"))))
              (font-lock-string-face ((t (:foreground "#b1d631"))))
              (font-lock-type-face ((t (:foreground"#7e8aa2"))))
              (font-lock-variable-name-face ((t (:foreground "#b1d631"))))
              (minibuffer-prompt ((t (:foreground "#b1d631" :bold t :background "#202020"))))
              (font-lock-warning-face ((t (:background "#b1d631" :foreground "#ffffff" :bold t))))
              ;(show-paren-match ((t (:foreground "#000000" :background "#b1d631"))))
              (paren-face-match ((t (:background "dark green"))))
              (paren-face-mismatch ((t (:background "red"))))
              (paren-match ((t (:background "forest green"))))
              (paren-mismatch ((t (:background "red"))))
              (show-paren-match ((t (:background "dark green"))))
              (show-paren-mismatch ((t (:background "red1"))))

              ))

  )

(add-to-list 'color-themes '(color-theme-mustang
                              "Mustang"
                              "jimmy.selgen@gmail.com"))

(provide 'color-theme-mustang)
