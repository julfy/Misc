((ac-capf status "required" recipe
          (:name ac-capf :description "auto-complete source of completion-at-point." :type github :pkgname "emacsorphanage/ac-capf" :depends
                 (auto-complete)))
 (ace-window status "installed" recipe
             (:name ace-window :description "Quickly switch windows using `avy'" :type github :pkgname "abo-abo/ace-window" :depends
                    (avy)))
 (auto-complete status "installed" recipe
                (:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
                       (popup fuzzy)
                       :features auto-complete-config :post-init
                       (progn
                         (add-to-list 'ac-dictionary-directories
                                      (expand-file-name "dict" default-directory))
                         (ac-config-default))))
 (avy status "installed" recipe
      (:name avy :description "Jump to things in Emacs tree-style." :type github :pkgname "abo-abo/avy" :depends
             (cl-lib)))
 (bar-cursor status "required" recipe nil)
 (bash-completion status "installed" recipe
                  (:name bash-completion :description "Completions for shell prompts based on Bash" :type github :pkgname "szermatt/emacs-bash-completion" :post-init
                         (progn
                           (add-hook 'shell-dynamic-complete-functions 'bash-completion-dynamic-complete)
                           (add-hook 'shell-command-complete-functions 'bash-completion-dynamic-complete))))
 (bui status "installed" recipe
      (:name bui :description "Buffer interface library" :type github :pkgname "alezost/bui.el" :depends
             (dash)))
 (cc-mode status "installed" recipe
          (:name cc-mode :type hg :url "http://hg.code.sf.net/p/cc-mode/cc-mode" :description "Major mode for editing C and similar languages."))
 (cider status "required" recipe
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
 (emacs-racer status "required" recipe
              (:name emacs-racer :description "Racer support for Emacs" :type github :pkgname "racer-rust/emacs-racer" :depends
                     (rust-mode rust-racer company-mode dash s)
                     :prepare
                     (add-hook 'rust-mode-hook #'racer-mode)))
 (epc status "installed" recipe
      (:name epc :description "An RPC stack for Emacs Lisp" :type github :pkgname "kiwanami/emacs-epc" :depends
             (deferred ctable)))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (etags-select status "required" recipe
               (:type github :pkgname "emacsmirror/etags-select" :name etags-select :description "Select from multiple tags" :type emacsmirror :features etags-select))
 (etags-u status "required" recipe
          (:name etags-u :auto-generated t :type emacswiki :description "- (auto)updating TAGS file using etags" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/etags-u.el"))
 (exec-path-from-shell status "installed" recipe
                       (:name exec-path-from-shell :website "https://github.com/purcell/exec-path-from-shell" :description "Emacs plugin for dynamic PATH loading" :type github :pkgname "purcell/exec-path-from-shell"))
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
 (highlight-symbol status "required" recipe
                   (:name highlight-symbol :description "Quickly highlight a symbol throughout the buffer and cycle through its locations." :type github :pkgname "nschum/highlight-symbol.el"))
 (ht status "installed" recipe
     (:name ht :website "https://github.com/Wilfred/ht.el" :description "The missing hash table utility library for Emacs." :type github :pkgname "Wilfred/ht.el"))
 (hydra status "installed" recipe
        (:name hydra :description "make Emacs bindings that stick around" :type github :depends
               (cl-lib)
               :pkgname "abo-abo/hydra"))
 (jedi status "installed" recipe
       (:name jedi :description "An awesome Python auto-completion for Emacs" :type github :pkgname "tkf/emacs-jedi" :submodule nil :depends
              (epc auto-complete python-environment)))
 (jinja2-mode status "installed" recipe
              (:name jinja2-mode :description "Jinja2 mode for emacs" :website "http://paradoxxxzero.github.com/jinja2-mode/" :type github :pkgname "paradoxxxzero/jinja2-mode"))
 (let-alist status "required" recipe
            (:name let-alist :description "Easily let-bind values of an assoc-list by their names." :builtin "25.0.50" :type elpa :website "https://elpa.gnu.org/packages/let-alist.html"))
 (lsp-mode status "installed" recipe
           (:name lsp-mode :website "https://github.com/emacs-lsp/lsp-mode" :description "Emacs client/library for the Language Server Protocol" :depends
                  (dash f ht hydra spinner markdown-mode)
                  :type github :pkgname "emacs-lsp/lsp-mode" :load-path
                  ("." "clients")))
 (markdown-mode status "installed" recipe
                (:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type github :pkgname "jrblevin/markdown-mode" :prepare
                       (add-to-list 'auto-mode-alist
                                    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
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
                           ("gnu" . "elpa.gnu.org/packages/"))))
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
 (pfuture status "installed" recipe
          (:name pfuture :description "A simple wrapper around asynchronous processes" :website "https://github.com/Alexander-Miller/pfuture" :type github :pkgname "Alexander-Miller/pfuture"))
 (pkg-info status "installed" recipe
           (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
                  (dash epl)))
 (popup status "installed" recipe
        (:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :depends cl-lib :pkgname "auto-complete/popup-el"))
 (pos-tip status "installed" recipe
          (:name pos-tip :description "Show tooltip at point" :type github :pkgname "pitkali/pos-tip"))
 (posframe status "installed" recipe
           (:name posframe :description "Pop a posframe (just a frame) at point" :website "https://github.com/tumashu/posframe" :type github :minimum-emacs-version "26" :depends cl-lib :pkgname "tumashu/posframe"))
 (powerline status "installed" recipe
            (:name powerline :website "https://github.com/milkypostman/powerline" :depends
                   (cl-lib)
                   :description "Powerline for Emacs" :type github :pkgname "milkypostman/powerline" :load-path "." :features powerline))
 (python-environment status "installed" recipe
                     (:name python-environment :description "Python virtualenv API for Emacs Lisp" :type github :pkgname "tkf/emacs-python-environment" :depends
                            (deferred)))
 (pyvenv status "installed" recipe
         (:name pyvenv :website "https://github.com/jorgenschaefer/pyvenv" :description "Python virtual environment interface for Emacs" :type github :pkgname "jorgenschaefer/pyvenv" :post-init
                (el-get-envpath-prepend "PYTHONPATH" default-directory)))
 (queue status "required" recipe
        (:name queue :description "Queue data structure" :type elpa))
 (rainbow-delimiters status "installed" recipe
                     (:name rainbow-delimiters :website "https://github.com/Fanael/rainbow-delimiters#readme" :description "Color nested parentheses, brackets, and braces according to their depth." :type github :pkgname "Fanael/rainbow-delimiters"))
 (rainbow-mode status "installed" recipe
               (:name rainbow-mode :description "Colorize color names in buffers" :type elpa :prepare
                      (autoload 'rainbow-turn-on "rainbow-mode")))
 (request status "installed" recipe
   (:name request :description "Easy HTTP request for Emacs Lisp" :type github :submodule nil :pkgname "tkf/emacs-request" :depends
          (deferred)
          :provide
          (request-deferred)))
 (rtags status "required" recipe nil)
 (rust-mode status "installed" recipe
            (:name rust-mode :type github :pkgname "rust-lang/rust-mode" :description "Emacs mode for Rust"))
 (rust-racer status "required" recipe
             (:name rust-racer :type github :pkgname "racer-rust/racer" :description "Rust code completion and code navigation" :build
                    '(("cargo" "+nightly" "build" "--release"))
                    :prepare
                    (setq racer-cmd
                          (concat default-directory "/target/release/racer"))
                    :post-init
                    (add-hook 'racer-mode-hook #'eldoc-mode)))
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
 (scala-mode status "installed" recipe
             (:name scala-mode :description "The definitive scala-mode for emacs" :type github :website "http://ensime.org" :pkgname "ensime/emacs-scala-mode"))
 (seq status "required" recipe
      (:name seq :description "Sequence manipulation functions" :builtin "25" :type elpa :website "https://elpa.gnu.org/packages/seq.html"))
 (slime status "required" recipe nil)
 (spinner status "installed" recipe
          (:name spinner :description "Emacs mode-line spinner for operations in progress." :type github :pkgname "Bruce-Connor/spinner.el"))
 (tabbar status "required" recipe
         (:name tabbar :description "Display a tab bar in the header line." :type github :pkgname "dholm/tabbar" :lazy t))
 (tree-mode status "installed" recipe
            (:name tree-mode :auto-generated t :type emacswiki :description "A mode to manage tree widgets" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/tree-mode.el"))
 (treemacs status "installed" recipe
           (:name treemacs :description "A tree layout file explorer for Emacs" :website "https://github.com/Alexander-Miller/treemacs" :type github :pkgname "Alexander-Miller/treemacs" :build
                  (("rm" "-rf" "src/extra"))
                  :load-path "src/elisp" :compile "src/elisp" :depends
                  (ace-window dash f ht hydra pfuture s)))
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
 (use-package status "required" recipe
              (:name use-package :type github :description "A use-package declaration for simplifying your .emacs" :pkgname "jwiegley/use-package"))
 (use-package-el-get status "required" recipe
                     (:name use-package-el-get :description "el-get support for use-package" :type github :pkgname "edvorg/use-package-el-get" :features use-package-el-get :depends use-package :post-init
                            (use-package-el-get-setup)))
 (yaml-mode status "installed" recipe
            (:name yaml-mode :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode"))
 (yasnippet status "installed" recipe
            (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil)))
