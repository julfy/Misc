((bar-cursor status "required" recipe nil)
 (bash-completion status "installed" recipe
                  (:name bash-completion :description "Completions for shell prompts based on Bash" :type github :pkgname "szermatt/emacs-bash-completion" :post-init
                         (progn
                           (add-hook 'shell-dynamic-complete-functions 'bash-completion-dynamic-complete)
                           (add-hook 'shell-command-complete-functions 'bash-completion-dynamic-complete))))
 (cider status "installed" recipe
        (:name cider :description "CIDER is a Clojure IDE and REPL." :type github :pkgname "clojure-emacs/cider" :depends
               (dash queue clojure-mode pkg-info)))
 (cl-lib status "required" recipe
         (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (clojure-mode status "installed" recipe
               (:name clojure-mode :website "https://github.com/clojure-emacs/clojure-mode" :description "Emacs support for the Clojure language." :type github :pkgname "clojure-emacs/clojure-mode"))
 (company-mode status "installed" recipe
               (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
                ("el-get.*\\.el$" "methods/")
                :features el-get :post-init
                (when
                    (memq 'el-get
                          (bound-and-true-p package-activated-list))
                  (message "Deleting melpa bootstrap el-get")
                  (unless package--initialized
                    (package-initialize t))
                  (when
                      (package-installed-p 'el-get)
                    (let
                        ((feats
                          (delete-dups
                           (el-get-package-features
                            (el-get-elpa-package-directory 'el-get)))))
                      (el-get-elpa-delete-package 'el-get)
                      (dolist
                          (feat feats)
                        (unload-feature feat t))))
                  (require 'el-get))))
 (emacs-racer status "installed" recipe
              (:name emacs-racer :description "Racer support for Emacs" :type github :pkgname "racer-rust/emacs-racer" :depends
                     (rust-mode rust-racer company-mode dash s)
                     :prepare
                     (add-hook 'rust-mode-hook #'racer-mode)))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (f status "installed" recipe
    (:name f :website "https://github.com/rejeep/f.el" :description "Modern API for working with files and directories in Emacs" :depends
           (s dash)
           :type github :pkgname "rejeep/f.el"))
 (highlight-symbol status "installed" recipe
                   (:name highlight-symbol :description "Quickly highlight a symbol throughout the buffer and cycle through its locations." :type github :pkgname "nschum/highlight-symbol.el"))
 (package status "required" recipe
          (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/ba08b24186711eaeb3748f3d1f23e2c2d9ed0d09:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
                 (progn
                   (let
                       ((old-package-user-dir
                         (expand-file-name
                          (convert-standard-filename
                           (concat
                            (file-name-as-directory default-directory)
                            "elpa")))))
                     (when
                         (file-directory-p old-package-user-dir)
                       (add-to-list 'package-directory-list old-package-user-dir)))
                   (setq package-archives
                         (bound-and-true-p package-archives))
                   (mapc
                    (lambda
                      (pa)
                      (add-to-list 'package-archives pa 'append))
                    '(("ELPA" . "http://tromey.com/elpa/")
                      ("melpa" . "http://melpa.org/packages/")
                      ("gnu" . "http://elpa.gnu.org/packages/")
                      ("marmalade" . "http://marmalade-repo.org/packages/")
                      ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (paredit status "installed" recipe
          (:name paredit :description "Minor mode for editing parentheses" :type github :prepare
                 (progn
                   (autoload 'enable-paredit-mode "paredit")
                   (autoload 'disable-paredit-mode "paredit"))
                 :pkgname "emacsmirror/paredit"))
 (pkg-info status "installed" recipe
           (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
                  (dash epl)))
 (pos-tip status "installed" recipe
          (:name pos-tip :description "Show tooltip at point" :type github :pkgname "pitkali/pos-tip"))
 (queue status "installed" recipe
        (:name queue :description "Queue data structure" :type elpa))
 (rainbow-delimiters status "installed" recipe
                     (:name rainbow-delimiters :website "https://github.com/Fanael/rainbow-delimiters#readme" :description "Color nested parentheses, brackets, and braces according to their depth." :type github :pkgname "Fanael/rainbow-delimiters"))
 (rust-mode status "installed" recipe
            (:name rust-mode :type github :pkgname "rust-lang/rust-mode" :description "Emacs mode for Rust"))
 (rust-racer status "required" recipe nil)
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
 (slime status "required" recipe nil)
 (tabbar status "installed" recipe
         (:name tabbar :description "Display a tab bar in the header line." :type github :pkgname "dholm/tabbar" :lazy t))
 (tuareg-mode status "installed" recipe
              (:name tuareg-mode :type github :description "an Emacs OCaml mode" :load-path
                     (".")
                     :pkgname "ocaml/tuareg" :prepare
                     (progn
                       (autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
                       (autoload 'camldebug "camldebug" "Run the Caml debugger" t)
                       (dolist
                           (ext
                            '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi"))
                         (add-to-list 'completion-ignored-extensions ext))
                       (add-to-list 'auto-mode-alist
                                    '("\\.ml[iylp]?" . tuareg-mode))))))
