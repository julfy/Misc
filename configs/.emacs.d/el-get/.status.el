((auto-complete status "installed" recipe
                (:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
                       (popup fuzzy)
                       :features auto-complete-config :post-init
                       (progn
                         (add-to-list 'ac-dictionary-directories
                                      (expand-file-name "dict" default-directory))
                         (ac-config-default))))
 (bar-cursor status "required" recipe nil)
 (bash-completion status "installed" recipe
                  (:name bash-completion :description "Completions for shell prompts based on Bash" :type github :pkgname "szermatt/emacs-bash-completion" :post-init
                         (progn
                           (add-hook 'shell-dynamic-complete-functions 'bash-completion-dynamic-complete)
                           (add-hook 'shell-command-complete-functions 'bash-completion-dynamic-complete))))
 (cider status "installed" recipe
        (:name cider :description "CIDER is a Clojure IDE and REPL." :type github :pkgname "clojure-emacs/cider" :depends
               (dash queue clojure-mode pkg-info)))
 (cl-lib status "installed" recipe
         (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :website "http://elpa.gnu.org/packages/cl-lib.html"))
 (clojure-mode status "installed" recipe
               (:name clojure-mode :website "https://github.com/clojure-emacs/clojure-mode" :description "Emacs support for the Clojure language." :type github :pkgname "clojure-emacs/clojure-mode"))
 (company-mode status "installed" recipe
               (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (ctable status "installed" recipe
         (:name ctable :description "Table Component for elisp" :type github :pkgname "kiwanami/emacs-ctable"))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (deferred status "installed" recipe
   (:name deferred :description "Simple asynchronous functions for emacs lisp." :type github :pkgname "kiwanami/emacs-deferred"))
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
 (elpy status "installed" recipe
       (:name elpy :website "https://github.com/jorgenschaefer/elpy" :description "Emacs Python Development Environment" :type github :pkgname "jorgenschaefer/elpy" :post-init
              (el-get-envpath-prepend "PYTHONPATH" default-directory)
              :depends
              (company-mode find-file-in-project highlight-indentation pyvenv yasnippet s)))
 (emacs-racer status "installed" recipe
              (:name emacs-racer :description "Racer support for Emacs" :type github :pkgname "racer-rust/emacs-racer" :depends
                     (rust-mode rust-racer company-mode dash s)
                     :prepare
                     (add-hook 'rust-mode-hook #'racer-mode)))
 (epc status "installed" recipe
      (:name epc :description "An RPC stack for Emacs Lisp" :type github :pkgname "kiwanami/emacs-epc" :depends
             (deferred ctable)))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (etags-select status "installed" recipe
               (:type github :pkgname "emacsmirror/etags-select" :name etags-select :description "Select from multiple tags" :type emacsmirror :features etags-select))
 (etags-u status "installed" recipe
          (:name etags-u :auto-generated t :type emacswiki :description "- (auto)updating TAGS file using etags" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/etags-u.el"))
 (f status "installed" recipe
    (:name f :website "https://github.com/rejeep/f.el" :description "Modern API for working with files and directories in Emacs" :depends
           (s dash)
           :type github :pkgname "rejeep/f.el"))
 (find-file-in-project status "installed" recipe
                       (:name find-file-in-project :type github :pkgname "technomancy/find-file-in-project" :description "Quick access to project files in Emacs"))
 (flycheck status "installed" recipe
           (:name flycheck :type github :pkgname "flycheck/flycheck" :minimum-emacs-version "24.3" :description "On-the-fly syntax checking extension" :depends
                  (dash pkg-info let-alist seq)))
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (highlight-indentation status "installed" recipe
                        (:name highlight-indentation :description "Function for highlighting indentation" :type git :url "https://github.com/antonj/Highlight-Indentation-for-Emacs"))
 (highlight-symbol status "installed" recipe
                   (:name highlight-symbol :description "Quickly highlight a symbol throughout the buffer and cycle through its locations." :type github :pkgname "nschum/highlight-symbol.el"))
 (jedi status "installed" recipe
       (:name jedi :description "An awesome Python auto-completion for Emacs" :type github :pkgname "tkf/emacs-jedi" :submodule nil :depends
              (epc auto-complete python-environment)))
 (let-alist status "installed" recipe
            (:name let-alist :description "Easily let-bind values of an assoc-list by their names." :builtin "25.0.50" :type elpa :website "https://elpa.gnu.org/packages/let-alist.html"))
 (package status "installed" recipe
          (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "https://repo.or.cz/w/emacs.git/blob_plain/ba08b24186711eaeb3748f3d1f23e2c2d9ed0d09:/lisp/emacs-lisp/package.el" :features package :post-init
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
                   (let
                       ((protocol
                         (if
                             (and
                              (fboundp 'gnutls-available-p)
                              (gnutls-available-p))
                             "https://"
                           (lwarn
                            '(el-get tls)
                            :warning "Your Emacs doesn't support HTTPS (TLS)%s"
                            (if
                                (eq system-type 'windows-nt)
                                ",\n  see https://github.com/dimitri/el-get/wiki/Installation-on-Windows." "."))
                           "http://"))
                        (archives
                         '(("melpa" . "melpa.org/packages/")
                           ("gnu" . "elpa.gnu.org/packages/")
                           ("marmalade" . "marmalade-repo.org/packages/"))))
                     (dolist
                         (archive archives)
                       (add-to-list 'package-archives
                                    (cons
                                     (car archive)
                                     (concat protocol
                                             (cdr archive)))))))))
 (paredit status "installed" recipe
          (:name paredit :description "Minor mode for editing parentheses" :type github :prepare
                 (progn
                   (autoload 'enable-paredit-mode "paredit")
                   (autoload 'disable-paredit-mode "paredit"))
                 :pkgname "emacsmirror/paredit"))
 (pkg-info status "installed" recipe
           (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
                  (dash epl)))
 (popup status "installed" recipe
        (:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :depends cl-lib :pkgname "auto-complete/popup-el"))
 (pos-tip status "installed" recipe
          (:name pos-tip :description "Show tooltip at point" :type github :pkgname "pitkali/pos-tip"))
 (python-environment status "installed" recipe
                     (:name python-environment :description "Python virtualenv API for Emacs Lisp" :type github :pkgname "tkf/emacs-python-environment" :depends
                            (deferred)))
 (pyvenv status "installed" recipe
         (:name pyvenv :website "https://github.com/jorgenschaefer/pyvenv" :description "Python virtual environment interface for Emacs" :type github :pkgname "jorgenschaefer/pyvenv" :post-init
                (el-get-envpath-prepend "PYTHONPATH" default-directory)))
 (queue status "installed" recipe
        (:name queue :description "Queue data structure" :type elpa))
 (rainbow-delimiters status "installed" recipe
                     (:name rainbow-delimiters :website "https://github.com/Fanael/rainbow-delimiters#readme" :description "Color nested parentheses, brackets, and braces according to their depth." :type github :pkgname "Fanael/rainbow-delimiters"))
 (rtags status "required" recipe nil)
 (rust-mode status "installed" recipe
            (:name rust-mode :type github :pkgname "rust-lang/rust-mode" :description "Emacs mode for Rust"))
 (rust-racer status "installed" recipe
             (:name rust-racer :type github :pkgname "racer-rust/racer" :description "Rust code completion and code navigation" :build
                    '(("cargo" "+nightly" "build" "--release"))
                    :prepare
                    (setq racer-cmd
                          (concat default-directory "/target/release/racer"))
                    :post-init
                    (add-hook 'racer-mode-hook #'eldoc-mode)))
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
 (seq status "installed" recipe
      (:name seq :description "Sequence manipulation functions" :builtin "25" :type elpa :website "https://elpa.gnu.org/packages/seq.html"))
 (slime status "required" recipe nil)
 (tabbar status "required" recipe
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
                                    '("\\.ml[iylp]?" . tuareg-mode)))))
 (yasnippet status "installed" recipe
            (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil)))
