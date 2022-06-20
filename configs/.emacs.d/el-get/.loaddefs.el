;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global Auto-Complete mode is enabled.
See the `global-auto-complete-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "auto-complete/auto-complete" '("auto-complete-mode" "ac-")))

;;;***

;;;### (autoloads nil "auto-complete/auto-complete-config" "auto-complete/auto-complete-config.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "auto-complete/auto-complete-config" '("ac-")))

;;;***

;;;### (autoloads nil "bash-completion/bash-completion" "bash-completion/bash-completion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from bash-completion/bash-completion.el

(autoload 'bash-completion-setup "bash-completion/bash-completion" "\
Register bash completion for the shell buffer and shell command line.

This function adds `bash-completion-dynamic-complete' to the completion
function list of shell mode, `shell-dynamic-complete-functions'.

This function is convenient, but it might not be the best way of enabling
bash completion in your .emacs file because it forces you to load the module
before it is needed. For an autoload version, add:

  (autoload \\='bash-completion-dynamic-complete \"bash-completion\"
    \"BASH completion hook\")
  (add-hook \\='shell-dynamic-complete-functions
            \\='bash-completion-dynamic-complete)" nil nil)

(autoload 'bash-completion-dynamic-complete "bash-completion/bash-completion" "\
Return the completion table for bash command at point.

This function is meant to be added into
`shell-dynamic-complete-functions'.  It uses `comint' to figure
out what the current command is and returns a completion table or
nil if no completions available.

When doing completion outside of a comint buffer, call
`bash-completion-dynamic-complete-nocomint' instead." nil nil)

(autoload 'bash-completion-dynamic-complete-nocomint "bash-completion/bash-completion" "\
Return completion information for bash command at an arbitrary position.

The bash command to be completed begins at COMP-START in the
current buffer. This must specify where the current command
starts, usually right after the prompt.

COMP-POS is the point where completion should happen, usually
just (point). Note that a bash command can span across multiple
line, so COMP-START is not necessarily on the same line as
COMP-POS.

This function does not assume that the current buffer is a shell
or even comint buffer. It can safely be called from any buffer
where a bash command appears, including `completion-at-point'.

If DYNAMIC-TABLE is passed a non-nil value, the resulting
collection will be a function that fetches the result lazily,
when it's called.

When calling from `completion-at-point', make sure to pass a
non-nil value to DYNAMIC-TABLE. This isn't just an optimization:
returning a function instead of a list tells Emacs it should
avoids post-filtering the results and possibly discarding useful
completion from bash.

When calling from another completion engine, make sure to treat
the returned completion as reliable and not post-process them
further.

Returns (list stub-start stub-end completions) with
 - stub-start, the position at which the completed region starts
 - stub-end, the position at which the completed region ends
 - completions, a possibly empty list of completion candidates
   or a function, if DYNAMIC-TABLE is non-nil, a lambda such as the one
   returned by `completion-table-dynamic'

\(fn COMP-START &optional COMP-POS DYNAMIC-TABLE)" nil nil)

(autoload 'bash-completion-refresh "bash-completion/bash-completion" "\
Force a refresh the completion table.

This can be called after changing the completion table on BASH,
or after starting a new BASH job.

This is only useful when `bash-completion-use-separate-processes'
is t." t nil)

(autoload 'bash-completion-reset "bash-completion/bash-completion" "\
Force the next completion command to start with a fresh BASH process.

This function kills any existing BASH completion process. This
way, the next time BASH completion is requested, a new process
will be created with the latest configuration. The BASH
completion process that will be killed depends on the
default-directory of the buffer where the command is executed.

Call this method if you have updated your .bashrc or any bash init scripts
and would like bash completion in Emacs to take these changes into account." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bash-completion/bash-completion" '("bash-completion-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-align" "cc-mode/cc-align.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from cc-mode/cc-align.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-align" '("c-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-awk" "cc-mode/cc-awk.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from cc-mode/cc-awk.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-awk" '("awk-" "c-awk-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-bytecomp" "cc-mode/cc-bytecomp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from cc-mode/cc-bytecomp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-bytecomp" '("cc-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-cmds" "cc-mode/cc-cmds.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from cc-mode/cc-cmds.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-cmds" '("c-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-defs" "cc-mode/cc-defs.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from cc-mode/cc-defs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-defs" '("c-" "cc-bytecomp-compiling-or-loading")))

;;;***

;;;### (autoloads nil "cc-mode/cc-engine" "cc-mode/cc-engine.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from cc-mode/cc-engine.el

(autoload 'c-guess-basic-syntax "cc-mode/cc-engine" "\
Return the syntactic context of the current line." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-engine" '("c-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-fonts" "cc-mode/cc-fonts.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from cc-mode/cc-fonts.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-fonts" '("autodoc-" "c++-font-lock-keywords" "c-" "doxygen-font-lock-" "gtkdoc-font-lock-" "idl-font-lock-keywords" "java" "objc-font-lock-keywords" "pike-font-lock-keywords")))

;;;***

;;;### (autoloads nil "cc-mode/cc-guess" "cc-mode/cc-guess.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from cc-mode/cc-guess.el

(defvar c-guess-guessed-offsets-alist nil "\
Currently guessed offsets-alist.")

(defvar c-guess-guessed-basic-offset nil "\
Currently guessed basic-offset.")

(autoload 'c-guess "cc-mode/cc-guess" "\
Guess the style in the region up to `c-guess-region-max', and install it.

The style is given a name based on the file's absolute file name.

If given a prefix argument (or if the optional argument ACCUMULATE is
non-nil) then the previous guess is extended, otherwise a new guess is
made from scratch.

\(fn &optional ACCUMULATE)" t nil)

(autoload 'c-guess-no-install "cc-mode/cc-guess" "\
Guess the style in the region up to `c-guess-region-max'; don't install it.

If given a prefix argument (or if the optional argument ACCUMULATE is
non-nil) then the previous guess is extended, otherwise a new guess is
made from scratch.

\(fn &optional ACCUMULATE)" t nil)

(autoload 'c-guess-buffer "cc-mode/cc-guess" "\
Guess the style on the whole current buffer, and install it.

The style is given a name based on the file's absolute file name.

If given a prefix argument (or if the optional argument ACCUMULATE is
non-nil) then the previous guess is extended, otherwise a new guess is
made from scratch.

\(fn &optional ACCUMULATE)" t nil)

(autoload 'c-guess-buffer-no-install "cc-mode/cc-guess" "\
Guess the style on the whole current buffer; don't install it.

If given a prefix argument (or if the optional argument ACCUMULATE is
non-nil) then the previous guess is extended, otherwise a new guess is
made from scratch.

\(fn &optional ACCUMULATE)" t nil)

(autoload 'c-guess-region "cc-mode/cc-guess" "\
Guess the style on the region and install it.

The style is given a name based on the file's absolute file name.

If given a prefix argument (or if the optional argument ACCUMULATE is
non-nil) then the previous guess is extended, otherwise a new guess is
made from scratch.

\(fn START END &optional ACCUMULATE)" t nil)

(autoload 'c-guess-region-no-install "cc-mode/cc-guess" "\
Guess the style on the region; don't install it.

Every line of code in the region is examined and values for the following two
variables are guessed:

* `c-basic-offset', and
* the indentation values of the various syntactic symbols in
  `c-offsets-alist'.

The guessed values are put into `c-guess-guessed-basic-offset' and
`c-guess-guessed-offsets-alist'.

Frequencies of use are taken into account when guessing, so minor
inconsistencies in the indentation style shouldn't produce wrong guesses.

If given a prefix argument (or if the optional argument ACCUMULATE is
non-nil) then the previous examination is extended, otherwise a new
guess is made from scratch.

Note that the larger the region to guess in, the slower the guessing.
So you can limit the region with `c-guess-region-max'.

\(fn START END &optional ACCUMULATE)" t nil)

(autoload 'c-guess-install "cc-mode/cc-guess" "\
Install the latest guessed style into the current buffer.
\(This guessed style is a combination of `c-guess-guessed-basic-offset',
`c-guess-guessed-offsets-alist' and `c-offsets-alist'.)

The style is entered into CC Mode's style system by
`c-add-style'.  Its name is either STYLE-NAME, or a name based on
the absolute file name of the file if STYLE-NAME is nil.

\(fn &optional STYLE-NAME)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-guess" '("c-guess-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-langs" "cc-mode/cc-langs.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from cc-mode/cc-langs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-langs" '("c-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-menus" "cc-mode/cc-menus.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from cc-mode/cc-menus.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-menus" '("cc-imenu-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-mode" "cc-mode/cc-mode.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from cc-mode/cc-mode.el

(autoload 'c-initialize-cc-mode "cc-mode/cc-mode" "\
Initialize CC Mode for use in the current buffer.
If the optional NEW-STYLE-INIT is nil or left out then all necessary
initialization to run CC Mode for the C language is done.  Otherwise
only some basic setup is done, and a call to `c-init-language-vars' or
`c-init-language-vars-for' is necessary too (which gives more
control).  See \"cc-mode.el\" for more info.

\(fn &optional NEW-STYLE-INIT)" nil nil)

(defvar c-mode-syntax-table nil "\
Syntax table used in c-mode buffers.")
 (add-to-list 'auto-mode-alist '("\\.\\(cc\\|hh\\)\\'" . c++-mode))
 (add-to-list 'auto-mode-alist '("\\.[ch]\\(pp\\|xx\\|\\+\\+\\)\\'" . c++-mode))
 (add-to-list 'auto-mode-alist '("\\.\\(CC?\\|HH?\\)\\'" . c++-mode))
 (add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))
 (add-to-list 'auto-mode-alist '("\\.h\\'" . c-or-c++-mode))
 (add-to-list 'auto-mode-alist '("\\.y\\(acc\\)?\\'" . c-mode))
 (add-to-list 'auto-mode-alist '("\\.lex\\'" . c-mode))

(autoload 'c-mode "cc-mode/cc-mode" "\
Major mode for editing K&R and ANSI C code.
To submit a problem report, enter `\\[c-submit-bug-report]' from a
c-mode buffer.  This automatically sets up a mail buffer with version
information already added.  You just need to add a description of the
problem, including a reproducible test case, and send the message.

To see what version of CC Mode you are running, enter `\\[c-version]'.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `c-mode-hook'.

Key bindings:
\\{c-mode-map}" t nil)

(autoload 'c-or-c++-mode "cc-mode/cc-mode" "\
Analyse buffer and enable either C or C++ mode.

Some people and projects use .h extension for C++ header files
which is also the one used for C header files.  This makes
matching on file name insufficient for detecting major mode that
should be used.

This function attempts to use file contents to determine whether
the code is C or C++ and based on that chooses whether to enable
`c-mode' or `c++-mode'." t nil)

(defvar c++-mode-syntax-table nil "\
Syntax table used in c++-mode buffers.")

(autoload 'c++-mode "cc-mode/cc-mode" "\
Major mode for editing C++ code.
To submit a problem report, enter `\\[c-submit-bug-report]' from a
c++-mode buffer.  This automatically sets up a mail buffer with
version information already added.  You just need to add a description
of the problem, including a reproducible test case, and send the
message.

To see what version of CC Mode you are running, enter `\\[c-version]'.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `c++-mode-hook'.

Key bindings:
\\{c++-mode-map}" t nil)

(defvar objc-mode-syntax-table nil "\
Syntax table used in objc-mode buffers.")
 (add-to-list 'auto-mode-alist '("\\.m\\'" . objc-mode))

(autoload 'objc-mode "cc-mode/cc-mode" "\
Major mode for editing Objective C code.
To submit a problem report, enter `\\[c-submit-bug-report]' from an
objc-mode buffer.  This automatically sets up a mail buffer with
version information already added.  You just need to add a description
of the problem, including a reproducible test case, and send the
message.

To see what version of CC Mode you are running, enter `\\[c-version]'.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `objc-mode-hook'.

Key bindings:
\\{objc-mode-map}" t nil)

(defvar java-mode-syntax-table nil "\
Syntax table used in java-mode buffers.")
 (add-to-list 'auto-mode-alist '("\\.java\\'" . java-mode))

(autoload 'java-mode "cc-mode/cc-mode" "\
Major mode for editing Java code.
To submit a problem report, enter `\\[c-submit-bug-report]' from a
java-mode buffer.  This automatically sets up a mail buffer with
version information already added.  You just need to add a description
of the problem, including a reproducible test case, and send the
message.

To see what version of CC Mode you are running, enter `\\[c-version]'.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `java-mode-hook'.

Key bindings:
\\{java-mode-map}" t nil)

(defvar idl-mode-syntax-table nil "\
Syntax table used in idl-mode buffers.")
 (add-to-list 'auto-mode-alist '("\\.idl\\'" . idl-mode))

(autoload 'idl-mode "cc-mode/cc-mode" "\
Major mode for editing CORBA's IDL, PSDL and CIDL code.
To submit a problem report, enter `\\[c-submit-bug-report]' from an
idl-mode buffer.  This automatically sets up a mail buffer with
version information already added.  You just need to add a description
of the problem, including a reproducible test case, and send the
message.

To see what version of CC Mode you are running, enter `\\[c-version]'.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `idl-mode-hook'.

Key bindings:
\\{idl-mode-map}" t nil)

(defvar pike-mode-syntax-table nil "\
Syntax table used in pike-mode buffers.")
 (add-to-list 'auto-mode-alist '("\\.\\(u?lpc\\|pike\\|pmod\\(.in\\)?\\)\\'" . pike-mode))
 (add-to-list 'interpreter-mode-alist '("pike" . pike-mode))

(autoload 'pike-mode "cc-mode/cc-mode" "\
Major mode for editing Pike code.
To submit a problem report, enter `\\[c-submit-bug-report]' from a
pike-mode buffer.  This automatically sets up a mail buffer with
version information already added.  You just need to add a description
of the problem, including a reproducible test case, and send the
message.

To see what version of CC Mode you are running, enter `\\[c-version]'.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `pike-mode-hook'.

Key bindings:
\\{pike-mode-map}" t nil)
 (add-to-list 'auto-mode-alist '("\\.awk\\'" . awk-mode))
 (add-to-list 'interpreter-mode-alist '("awk" . awk-mode))
 (add-to-list 'interpreter-mode-alist '("mawk" . awk-mode))
 (add-to-list 'interpreter-mode-alist '("nawk" . awk-mode))
 (add-to-list 'interpreter-mode-alist '("gawk" . awk-mode))
 (autoload 'awk-mode "cc-mode" "Major mode for editing AWK code." t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-mode" '("awk-mode" "c++-mode-" "c-" "idl-mode-" "java-mode-" "objc-mode-" "pike-mode-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-styles" "cc-mode/cc-styles.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from cc-mode/cc-styles.el

(autoload 'c-set-style "cc-mode/cc-styles" "\
Set the current buffer to use the style STYLENAME.
STYLENAME, a string, must be an existing CC Mode style - These are contained
in the variable `c-style-alist'.

The variable `c-indentation-style' will get set to STYLENAME.

\"Setting the style\" is done by setting CC Mode's \"style variables\" to the
values indicated by the pertinent entry in `c-style-alist'.  Other variables
might get set too.

If DONT-OVERRIDE is neither nil nor t, style variables whose default values
have been set (more precisely, whose default values are not the symbol
`set-from-style') will not be changed.  This avoids overriding global settings
done in your init file.  It is useful to call c-set-style from a mode hook
in this way.

If DONT-OVERRIDE is t, style variables that already have values (i.e., whose
values are not the symbol `set-from-style') will not be overridden.  CC Mode
calls c-set-style internally in this way whilst initializing a buffer; if
cc-set-style is called like this from anywhere else, it will usually behave as
a null operation.

\(fn STYLENAME &optional DONT-OVERRIDE)" t nil)

(autoload 'c-add-style "cc-mode/cc-styles" "\
Adds a style to `c-style-alist', or updates an existing one.
STYLE is a string identifying the style to add or update.  DESCRIPTION
is an association list describing the style and must be of the form:

  ([BASESTYLE] (VARIABLE . VALUE) [(VARIABLE . VALUE) ...])

See the variable `c-style-alist' for the semantics of BASESTYLE,
VARIABLE and VALUE.  This function also sets the current style to
STYLE using `c-set-style' if the optional SET-P flag is non-nil.

\(fn STYLE DESCRIPTION &optional SET-P)" t nil)

(autoload 'c-set-offset "cc-mode/cc-styles" "\
Change the value of a syntactic element symbol in `c-offsets-alist'.
SYMBOL is the syntactic element symbol to change and OFFSET is the new
offset for that syntactic element.  The optional argument is not used
and exists only for compatibility reasons.

\(fn SYMBOL OFFSET &optional IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-styles" '("c-" "cc-choose-style-for-mode")))

;;;***

;;;### (autoloads nil "cc-mode/cc-subword" "cc-mode/cc-subword.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from cc-mode/cc-subword.el
 (autoload 'c-subword-mode "cc-subword" "Mode enabling subword movement and editing keys." t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-subword" '("c-")))

;;;***

;;;### (autoloads nil "cc-mode/cc-vars" "cc-mode/cc-vars.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from cc-mode/cc-vars.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode/cc-vars" '("awk-mode-hook" "c++-" "c-" "defcustom-c-stylevar" "idl-" "java-" "objc-" "pike-")))

;;;***

;;;### (autoloads nil "company-mode/company" "company-mode/company.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company.el

(autoload 'company-mode "company-mode/company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

If called interactively, enable Company mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp, also
enable the mode if ARG is omitted or nil, and toggle it if ARG is
`toggle'; disable the mode otherwise.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific backend, call
it interactively or use `company-begin-backend'.

By default, the completions list is sorted alphabetically, unless the
backend chooses otherwise, or `company-transformers' changes it later.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(put 'global-company-mode 'globalized-minor-mode t)

(defvar global-company-mode nil "\
Non-nil if Global Company mode is enabled.
See the `global-company-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company-mode/company" nil)

(autoload 'global-company-mode "company-mode/company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

(autoload 'company-manual-begin "company-mode/company" nil t nil)

(autoload 'company-complete "company-mode/company" "\
Insert the common part of all candidates or the current selection.
The first time this is called, the common part is inserted, the second
time, or when the selection has been changed, the selected candidate is
inserted." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company" '("company-")))

;;;***

;;;### (autoloads nil "company-mode/company-abbrev" "company-mode/company-abbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-abbrev.el

(autoload 'company-abbrev "company-mode/company-abbrev" "\
`company-mode' completion backend for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-abbrev" '("company-abbrev-insert")))

;;;***

;;;### (autoloads nil "company-mode/company-bbdb" "company-mode/company-bbdb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-bbdb.el

(autoload 'company-bbdb "company-mode/company-bbdb" "\
`company-mode' completion backend for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-bbdb" '("company-bbdb-")))

;;;***

;;;### (autoloads nil "company-mode/company-capf" "company-mode/company-capf.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-capf.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-capf" '("company-")))

;;;***

;;;### (autoloads nil "company-mode/company-clang" "company-mode/company-clang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-clang.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-clang" '("company-clang")))

;;;***

;;;### (autoloads nil "company-mode/company-cmake" "company-mode/company-cmake.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-cmake.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-cmake" '("company-cmake")))

;;;***

;;;### (autoloads nil "company-mode/company-css" "company-mode/company-css.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-css.el

(autoload 'company-css "company-mode/company-css" "\
`company-mode' completion backend for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-css" '("company-css-")))

;;;***

;;;### (autoloads nil "company-mode/company-dabbrev" "company-mode/company-dabbrev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-dabbrev.el

(autoload 'company-dabbrev "company-mode/company-dabbrev" "\
dabbrev-like `company-mode' completion backend.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-dabbrev" '("company-dabbrev-")))

;;;***

;;;### (autoloads nil "company-mode/company-dabbrev-code" "company-mode/company-dabbrev-code.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-mode/company-dabbrev-code" "\
dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-dabbrev-code" '("company-dabbrev-code-")))

;;;***

;;;### (autoloads nil "company-mode/company-elisp" "company-mode/company-elisp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-elisp.el

(autoload 'company-elisp "company-mode/company-elisp" "\
`company-mode' completion backend for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-elisp" '("company-elisp-")))

;;;***

;;;### (autoloads nil "company-mode/company-etags" "company-mode/company-etags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-etags.el

(autoload 'company-etags "company-mode/company-etags" "\
`company-mode' completion backend for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-etags" '("company-etags-")))

;;;***

;;;### (autoloads nil "company-mode/company-files" "company-mode/company-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-files.el

(autoload 'company-files "company-mode/company-files" "\
`company-mode' completion backend existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-files" '("company-file")))

;;;***

;;;### (autoloads nil "company-mode/company-gtags" "company-mode/company-gtags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-gtags.el

(autoload 'company-gtags "company-mode/company-gtags" "\
`company-mode' completion backend for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-gtags" '("company-gtags-")))

;;;***

;;;### (autoloads nil "company-mode/company-ispell" "company-mode/company-ispell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-ispell.el

(autoload 'company-ispell "company-mode/company-ispell" "\
`company-mode' completion backend using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-ispell" '("company-ispell-")))

;;;***

;;;### (autoloads nil "company-mode/company-keywords" "company-mode/company-keywords.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-keywords.el

(autoload 'company-keywords "company-mode/company-keywords" "\
`company-mode' backend for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-keywords" '("company-keywords-")))

;;;***

;;;### (autoloads nil "company-mode/company-nxml" "company-mode/company-nxml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-nxml.el

(autoload 'company-nxml "company-mode/company-nxml" "\
`company-mode' completion backend for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-nxml" '("company-nxml-")))

;;;***

;;;### (autoloads nil "company-mode/company-oddmuse" "company-mode/company-oddmuse.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-oddmuse.el

(autoload 'company-oddmuse "company-mode/company-oddmuse" "\
`company-mode' completion backend for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-oddmuse" '("company-oddmuse-")))

;;;***

;;;### (autoloads nil "company-mode/company-semantic" "company-mode/company-semantic.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-semantic.el

(autoload 'company-semantic "company-mode/company-semantic" "\
`company-mode' completion backend using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-semantic" '("company-semantic-")))

;;;***

;;;### (autoloads nil "company-mode/company-template" "company-mode/company-template.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-template.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-template" '("company-template-")))

;;;***

;;;### (autoloads nil "company-mode/company-tempo" "company-mode/company-tempo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-tempo.el

(autoload 'company-tempo "company-mode/company-tempo" "\
`company-mode' completion backend for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-tempo" '("company-tempo-")))

;;;***

;;;### (autoloads nil "company-mode/company-tests" "company-mode/company-tests.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-tests.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-tests" '("company-")))

;;;***

;;;### (autoloads nil "company-mode/company-tng" "company-mode/company-tng.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-tng.el

(autoload 'company-tng-frontend "company-mode/company-tng" "\
When the user changes the selection at least once, this
frontend will display the candidate in the buffer as if it's
already there and any key outside of `company-active-map' will
confirm the selection and finish the completion.

\(fn COMMAND)" nil nil)

(define-obsolete-function-alias 'company-tng-configure-default 'company-tng-mode "0.9.14" "\
Applies the default configuration to enable company-tng.")

(defvar company-tng-mode nil "\
Non-nil if Company-Tng mode is enabled.
See the `company-tng-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `company-tng-mode'.")

(custom-autoload 'company-tng-mode "company-mode/company-tng" nil)

(autoload 'company-tng-mode "company-mode/company-tng" "\
This minor mode enables `company-tng-frontend'.

If called interactively, enable Company-Tng mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp, also
enable the mode if ARG is omitted or nil, and toggle it if ARG is
`toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-tng" '("company-tng-")))

;;;***

;;;### (autoloads nil "company-mode/company-yasnippet" "company-mode/company-yasnippet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from company-mode/company-yasnippet.el

(autoload 'company-yasnippet "company-mode/company-yasnippet" "\
`company-mode' backend for `yasnippet'.

This backend should be used with care, because as long as there are
snippets defined for the current major mode, this backend will always
shadow backends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a backend or
  several that provide actual text completions.

  (add-hook \\='js-mode-hook
            (lambda ()
              (set (make-local-variable \\='company-backends)
                   \\='((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other backends.

  (push \\='(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") \\='company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-mode/company-yasnippet" '("company-yasnippet-")))

;;;***

;;;### (autoloads nil "dash/dash" "dash/dash.el" (0 0 0 0))
;;; Generated autoloads from dash/dash.el

(autoload 'dash-fontify-mode "dash/dash" "\
Toggle fontification of Dash special variables.

If called interactively, enable Dash-Fontify mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp, also
enable the mode if ARG is omitted or nil, and toggle it if ARG is
`toggle'; disable the mode otherwise.

Dash-Fontify mode is a buffer-local minor mode intended for Emacs
Lisp buffers.  Enabling it causes the special variables bound in
anaphoric Dash macros to be fontified.  These anaphoras include
`it', `it-index', `acc', and `other'.  In older Emacs versions
which do not dynamically detect macros, Dash-Fontify mode
additionally fontifies Dash macro calls.

See also `dash-fontify-mode-lighter' and
`global-dash-fontify-mode'.

\(fn &optional ARG)" t nil)

(put 'global-dash-fontify-mode 'globalized-minor-mode t)

(defvar global-dash-fontify-mode nil "\
Non-nil if Global Dash-Fontify mode is enabled.
See the `global-dash-fontify-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-dash-fontify-mode'.")

(custom-autoload 'global-dash-fontify-mode "dash/dash" nil)

(autoload 'global-dash-fontify-mode "dash/dash" "\
Toggle Dash-Fontify mode in all buffers.
With prefix ARG, enable Global Dash-Fontify mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Dash-Fontify mode is enabled in all buffers where
`dash--turn-on-fontify-mode' would do it.
See `dash-fontify-mode' for more information on Dash-Fontify mode.

\(fn &optional ARG)" t nil)

(autoload 'dash-register-info-lookup "dash/dash" "\
Register the Dash Info manual with `info-lookup-symbol'.
This allows Dash symbols to be looked up with \\[info-lookup-symbol]." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dash/dash" '("!cdr" "!cons" "--" "->" "-a" "-butlast" "-c" "-d" "-e" "-f" "-gr" "-i" "-juxt" "-keep" "-l" "-m" "-no" "-o" "-p" "-r" "-s" "-t" "-u" "-value-to-list" "-when-let" "-zip" "dash-")))

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (0 0 0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code." t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring." t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-autoloading" "el-get/el-get-autoloading.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-autoloading.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-autoloading" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-build" "el-get/el-get-build.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-build.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-build" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "el-get/el-get-bundle.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC SYNC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The property list may include the keyword
`:bundle-sync' with a value of either `t' or `nil' to request that
`el-get-bundle' invoke `el-get' synchronously (respectively asynchronously).
The keyword `:bundle-async' is the inverse of `:bundle-sync'.
\(Note that the request to run el-get synchronously may not be respected in all
circumstances: see the definition of `el-get-bundle-el-get' for details.)
The FORM after the property list is treated as initialization code,
which is actually an `:after' property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(function-put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(function-put 'el-get-bundle! 'lisp-indent-function 'defun)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-bundle" '("el-get-bundle-")))

;;;***

;;;### (autoloads nil "el-get/el-get-byte-compile" "el-get/el-get-byte-compile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-byte-compile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-byte-compile" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-check" "el-get/el-get-check.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-check" '("el-get-check-")))

;;;***

;;;### (autoloads nil "el-get/el-get-core" "el-get/el-get-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-core" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-custom" "el-get/el-get-custom.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-custom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-custom" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-dependencies" "el-get/el-get-dependencies.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-dependencies.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-dependencies" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-list-packages" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-methods" "el-get/el-get-methods.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-methods.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-methods" '("el-get-insecure-check")))

;;;***

;;;### (autoloads nil "el-get/el-get-notify" "el-get/el-get-notify.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-notify.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-notify" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-recipes" "el-get/el-get-recipes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-recipes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-recipes" '("el-get-")))

;;;***

;;;### (autoloads nil "el-get/el-get-status" "el-get/el-get-status.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el-get/el-get-status.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "el-get/el-get-status" '("el-get-")))

;;;***

;;;### (autoloads nil "elpy/elpy" "elpy/elpy.el" (0 0 0 0))
;;; Generated autoloads from elpy/elpy.el

(autoload 'elpy-enable "elpy/elpy" "\
Enable Elpy in all future Python buffers.

\(fn &optional IGNORED)" t nil)

(autoload 'elpy-mode "elpy/elpy" "\
Minor mode in Python buffers for the Emacs Lisp Python Environment.

This mode fully supports virtualenvs. Once you switch a
virtualenv using \\[pyvenv-workon], you can use
\\[elpy-rpc-restart] to make the elpy Python process use your
virtualenv.

\\{elpy-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'elpy-config "elpy/elpy" "\
Configure Elpy.

This function will pop up a configuration buffer, which is mostly
a customize buffer, but has some more options.

\(fn)" t nil)

(autoload 'elpy-version "elpy/elpy" "\
Display the version of Elpy.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "elpy/elpy" '("elpy-")))

;;;***

;;;### (autoloads nil "exec-path-from-shell/exec-path-from-shell"
;;;;;;  "exec-path-from-shell/exec-path-from-shell.el" (0 0 0 0))
;;; Generated autoloads from exec-path-from-shell/exec-path-from-shell.el

(autoload 'exec-path-from-shell-copy-envs "exec-path-from-shell/exec-path-from-shell" "\
Set the environment variables with NAMES from the user's shell.

As a special case, if the variable is $PATH, then the variables
`exec-path' and `eshell-path-env' are also set appropriately.
The result is an alist, as described by
`exec-path-from-shell-getenvs'.

\(fn NAMES)" nil nil)

(autoload 'exec-path-from-shell-copy-env "exec-path-from-shell/exec-path-from-shell" "\
Set the environment variable $NAME from the user's shell.

As a special case, if the variable is $PATH, then the variables
`exec-path' and `eshell-path-env' are also set appropriately.
Return the value of the environment variable.

\(fn NAME)" t nil)

(autoload 'exec-path-from-shell-initialize "exec-path-from-shell/exec-path-from-shell" "\
Initialize environment from the user's shell.

The values of all the environment variables named in
`exec-path-from-shell-variables' are set from the corresponding
values used in the user's shell.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "exec-path-from-shell/exec-path-from-shell" '("exec-path-from-shell-")))

;;;***

;;;### (autoloads nil "f/f" "f/f.el" (0 0 0 0))
;;; Generated autoloads from f/f.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "f/f" '("f-")))

;;;***

;;;### (autoloads nil "find-file-in-project/find-file-in-project"
;;;;;;  "find-file-in-project/find-file-in-project.el" (0 0 0 0))
;;; Generated autoloads from find-file-in-project/find-file-in-project.el

(autoload 'ffip-git-diff-current-file "find-file-in-project/find-file-in-project" "\
Run 'git diff version:current-file current-file'.

\(fn)" nil nil)

(autoload 'ffip-copy-without-change "find-file-in-project/find-file-in-project" "\
Copy P without change.

\(fn P)" nil nil)

(autoload 'ffip-copy-reactjs-import "find-file-in-project/find-file-in-project" "\
Create ReactJS link from P and copy the result.

\(fn P)" nil nil)

(autoload 'ffip-copy-org-file-link "find-file-in-project/find-file-in-project" "\
Create org link from P and copy the result.

\(fn P)" nil nil)

(defvar ffip-find-relative-path-callback 'ffip-copy-without-change "\
The callback after calling `find-relative-path'.")

(autoload 'ffip-project-root "find-file-in-project/find-file-in-project" "\
Return the root of the project.

\(fn)" nil nil)

(autoload 'ffip-save-ivy-last "find-file-in-project/find-file-in-project" "\
Save `ivy-last' into `ffip-ivy-last-saved'.  Requires ivy.

\(fn)" t nil)

(autoload 'ffip-get-project-root-directory "find-file-in-project/find-file-in-project" "\
Get the full path of project root directory.

\(fn)" nil nil)

(autoload 'ffip-ivy-resume "find-file-in-project/find-file-in-project" "\
Wrapper of `ivy-resume'.  Resume the search saved at `ffip-ivy-last-saved'.

\(fn)" t nil)

(autoload 'ffip-filename-identity "find-file-in-project/find-file-in-project" "\
Return identical KEYWORD.

\(fn KEYWORD)" nil nil)

(autoload 'ffip-filename-camelcase-to-dashes "find-file-in-project/find-file-in-project" "\
Convert KEYWORD from camel cased to dash separated.
If CHECK-ONLY is true, only do the check.

\(fn KEYWORD &optional CHECK-ONLY)" nil nil)

(autoload 'ffip-filename-dashes-to-camelcase "find-file-in-project/find-file-in-project" "\
Convert KEYWORD from dash separated to camel cased.
If CHECK-ONLY is true, only do the check.

\(fn KEYWORD &optional CHECK-ONLY)" nil nil)

(autoload 'ffip-completing-read "find-file-in-project/find-file-in-project" "\
Read a string in minibuffer, with completion.

PROMPT is a string with same format parameters in `ido-completing-read'.
COLLECTION is a list of strings.

ACTION is a lambda function to call after selecting a result.

This function returns the selected candidate or nil.

\(fn PROMPT COLLECTION &optional ACTION)" nil nil)

(autoload 'ffip-project-search "find-file-in-project/find-file-in-project" "\
Return an alist of all filenames in the project and their path.

Files with duplicate filenames are suffixed with the name of the
directory they are found in so that they are unique.

If KEYWORD is string, it's the file name or file path to find file.
If KEYWORD is list, it's the list of file names.
IF IS-FINDING-DIRECTORY is t, we are searching directories, else files.
DIRECTORY-TO-SEARCH specify the root directory to search.

\(fn KEYWORD IS-FINDING-DIRECTORY &optional DIRECTORY-TO-SEARCH)" nil nil)

(autoload 'ffip-find-files "find-file-in-project/find-file-in-project" "\
Use KEYWORD to find files.
If OPEN-ANOTHER-WINDOW is t, the results are displayed in a new window.
If FIND-DIRECTORY is t, only search directories.  FN is callback.
This function is the API to find files.

\(fn KEYWORD OPEN-ANOTHER-WINDOW &optional FIND-DIRECTORY FN)" nil nil)

(autoload 'ffip-create-project-file "find-file-in-project/find-file-in-project" "\
Create or Append .dir-locals.el to set up per directory.
You can move .dir-locals.el to root directory.
See (info \"(Emacs) Directory Variables\") for details.

\(fn)" t nil)

(autoload 'ffip-current-full-filename-match-pattern-p "find-file-in-project/find-file-in-project" "\
Is current full file name (including directory) match the REGEX?

\(fn REGEX)" nil nil)

(autoload 'find-file-in-project "find-file-in-project/find-file-in-project" "\
More powerful and efficient `find-file-in-project-by-selected' is recommended.

Prompt with a completing list of all files in the project to find one.
If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.
The project's scope is defined as the first directory containing
a `ffip-project-file' whose value is \".git\" by default.
You can override this by setting the variable `ffip-project-root'.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-in-project-at-point "find-file-in-project/find-file-in-project" "\
Find file whose name is guessed around point.
If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-in-current-directory "find-file-in-project/find-file-in-project" "\
Search fil in current directory or LEVEL up parent directory.

\(fn &optional LEVEL)" t nil)

(autoload 'find-file-in-project-by-selected "find-file-in-project/find-file-in-project" "\
Same as `find-file-in-project' but more powerful and faster.
It use string from selected region to search files in the project.
If no region is selected, you could provide a keyword.

Keyword could be ANY part of the file's full path and support wildcard.
For example, to find /home/john/proj1/test.js, below keywords are valid:
- test.js
- roj1/tes
- john*test

If keyword contains line number like \"hello.txt:32\" or \"hello.txt:32:\",
we will move to that line in opened file.

If keyword is empty, it behaves same as `find-file-in-project'.

If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'ffip-insert-file "find-file-in-project/find-file-in-project" "\
Insert contents of file in current buffer.
The file name is selected interactively from candidates in project.

\(fn)" t nil)

(autoload 'find-file-with-similar-name "find-file-in-project/find-file-in-project" "\
Use base name of current file as keyword which could be further stripped.
by `ffip-strip-file-name-regex'.
If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-in-current-directory-by-selected "find-file-in-project/find-file-in-project" "\
Like `find-file-in-project-by-selected' but search current directory.
If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-relative-path "find-file-in-project/find-file-in-project" "\
Find file/directory and copy its relative path into `kill-ring'.
Optional prefix FIND-DIRECTORY copy the directory path; file path by default.

You can set `ffip-find-relative-path-callback' to format the string before copying,
  (setq ffip-find-relative-path-callback 'ffip-copy-reactjs-import)
  (setq ffip-find-relative-path-callback 'ffip-copy-org-file-link)

\(fn &optional FIND-DIRECTORY)" t nil)

(autoload 'find-directory-in-project-by-selected "find-file-in-project/find-file-in-project" "\
Similar to `find-file-in-project-by-selected'.
Use string from selected region to find directory in the project.
If no region is selected, you need provide keyword.

Keyword could be directory's base-name only or parent-directory+base-name
For example, to find /home/john/proj1/test, below keywords are valid:
- test
- roj1/test
- john*test

If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(defalias 'ffip 'find-file-in-project)

(autoload 'ffip-split-window-horizontally "find-file-in-project/find-file-in-project" "\
Find&Open file in horizontal split window.
New window size is looked up in `ffip-window-ratio-alist' by RATIO.
Keyword to search new file is selected text or user input.

\(fn &optional RATIO)" t nil)

(autoload 'ffip-split-window-vertically "find-file-in-project/find-file-in-project" "\
Find&Open file in vertical split window.
New window size is looked up in `ffip-window-ratio-alist' by RATIO.
Keyword to search new file is selected text or user input.

\(fn &optional RATIO)" t nil)

(autoload 'ffip-diff-quit "find-file-in-project/find-file-in-project" "\
Quit.

\(fn)" t nil)

(autoload 'ffip-diff-find-file "find-file-in-project/find-file-in-project" "\
File file(s) in current hunk.
If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'ffip-show-diff-internal "find-file-in-project/find-file-in-project" "\
Show the diff output by executing selected `ffip-diff-backends'.
NUM is the index selected backend from `ffip-diff-backends'.
NUM is zero based whose default value is zero.

\(fn &optional NUM)" t nil)

(autoload 'ffip-show-diff-by-description "find-file-in-project/find-file-in-project" "\
Show the diff output by executing selected `ffip-diff-backends'.
NUM is the backend index of `ffip-diff-backends'.
If NUM is not nil, the corresponding backend is executed directly.

\(fn &optional NUM)" t nil)

(autoload 'ffip-diff-apply-hunk "find-file-in-project/find-file-in-project" "\
Apply current hunk in `diff-mode'.  Try to locate the file to patch.
Similar to `diff-apply-hunk' but smarter.
Please read documentation of `diff-apply-hunk' to get more details.
If REVERSE is t, applied patch is reverted.

\(fn &optional REVERSE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "find-file-in-project/find-file-in-project" '("ffip-")))

;;;***

;;;### (autoloads nil "flycheck/flycheck" "flycheck/flycheck.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from flycheck/flycheck.el

(autoload 'flycheck-manual "flycheck/flycheck" "\
Open the Flycheck manual.

\(fn)" t nil)

(autoload 'flycheck-mode "flycheck/flycheck" "\
Minor mode for on-the-fly syntax checking.

When called interactively, toggle `flycheck-mode'.  With prefix
ARG, enable `flycheck-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `flycheck-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `flycheck-mode'.
Otherwise behave as if called interactively.

In `flycheck-mode' the buffer is automatically syntax-checked
using the first suitable syntax checker from `flycheck-checkers'.
Use `flycheck-select-checker' to select a checker for the current
buffer manually.

\\{flycheck-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-flycheck-mode nil "\
Non-nil if Global Flycheck mode is enabled.
See the `global-flycheck-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-flycheck-mode'.")

(custom-autoload 'global-flycheck-mode "flycheck/flycheck" nil)

(autoload 'global-flycheck-mode "flycheck/flycheck" "\
Toggle Flycheck mode in all buffers.
With prefix ARG, enable Global Flycheck mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Flycheck mode is enabled in all buffers where
`flycheck-mode-on-safe' would do it.
See `flycheck-mode' for more information on Flycheck mode.

\(fn &optional ARG)" t nil)

(autoload 'flycheck-define-error-level "flycheck/flycheck" "\
Define a new error LEVEL with PROPERTIES.

The following PROPERTIES constitute an error level:

`:severity SEVERITY'
     A number denoting the severity of this level.  The higher
     the number, the more severe is this level compared to other
     levels.  Defaults to 0.

     The severity is used by `flycheck-error-level-<' to
     determine the ordering of errors according to their levels.

`:compilation-level LEVEL'

     A number indicating the broad class of messages that errors
     at this level belong to: one of 0 (info), 1 (warning), or
     2 or nil (error).  Defaults to nil.

     This is used by `flycheck-checker-pattern-to-error-regexp'
     to map error levels into `compilation-mode''s hierarchy and
     to get proper highlighting of errors in `compilation-mode'.

`:overlay-category CATEGORY'
     A symbol denoting the overlay category to use for error
     highlight overlays for this level.  See Info
     node `(elisp)Overlay Properties' for more information about
     overlay categories.

     A category for an error level overlay should at least define
     the `face' property, for error highlighting.  Another useful
     property for error level categories is `priority', to
     influence the stacking of multiple error level overlays.

`:fringe-bitmap BITMAP'
     A fringe bitmap symbol denoting the bitmap to use for fringe
     indicators for this level.  See Info node `(elisp)Fringe
     Bitmaps' for more information about fringe bitmaps,
     including a list of built-in fringe bitmaps.

`:fringe-face FACE'
     A face symbol denoting the face to use for fringe indicators
     for this level.

`:error-list-face FACE'
     A face symbol denoting the face to use for messages of this
     level in the error list.  See `flycheck-list-errors'.

\(fn LEVEL &rest PROPERTIES)" nil nil)

(function-put 'flycheck-define-error-level 'lisp-indent-function '1)

(autoload 'flycheck-define-command-checker "flycheck/flycheck" "\
Define SYMBOL as syntax checker to run a command.

Define SYMBOL as generic syntax checker via
`flycheck-define-generic-checker', which uses an external command
to check the buffer.  SYMBOL and DOCSTRING are the same as for
`flycheck-define-generic-checker'.

In addition to the properties understood by
`flycheck-define-generic-checker', the following PROPERTIES
constitute a command syntax checker.  Unless otherwise noted, all
properties are mandatory.  Note that the default `:error-filter'
of command checkers is `flycheck-sanitize-errors'.

`:command COMMAND'
     The command to run for syntax checking.

     COMMAND is a list of the form `(EXECUTABLE [ARG ...])'.

     EXECUTABLE is a string with the executable of this syntax
     checker.  It can be overridden with the variable
     `flycheck-SYMBOL-executable'.  Note that this variable is
     NOT implicitly defined by this function.  Use
     `flycheck-def-executable-var' to define this variable.

     Each ARG is an argument to the executable, either as string,
     or as special symbol or form for
     `flycheck-substitute-argument', which see.

`:error-patterns PATTERNS'
     A list of patterns to parse the output of the `:command'.

     Each ITEM in PATTERNS is a list `(LEVEL SEXP ...)', where
     LEVEL is a Flycheck error level (see
     `flycheck-define-error-level'), followed by one or more RX
     `SEXP's which parse an error of that level and extract line,
     column, file name and the message.

     See `rx' for general information about RX, and
     `flycheck-rx-to-string' for some special RX forms provided
     by Flycheck.

     All patterns are applied in the order of declaration to the
     whole output of the syntax checker.  Output already matched
     by a pattern will not be matched by subsequent patterns.  In
     other words, the first pattern wins.

     This property is optional.  If omitted, however, an
     `:error-parser' is mandatory.

`:error-parser FUNCTION'
     A function to parse errors with.

     The function shall accept three arguments OUTPUT CHECKER
     BUFFER.  OUTPUT is the syntax checker output as string,
     CHECKER the syntax checker that was used, and BUFFER a
     buffer object representing the checked buffer.  The function
     must return a list of `flycheck-error' objects parsed from
     OUTPUT.

     This property is optional.  If omitted, it defaults to
     `flycheck-parse-with-patterns'.  In this case,
     `:error-patterns' is mandatory.

`:standard-input t'
     Whether to send the buffer contents on standard input.

     If this property is given and has a non-nil value, send the
     contents of the buffer on standard input.

     Defaults to nil.

Note that you may not give `:start', `:interrupt', and
`:print-doc' for a command checker.  You can give a custom
`:verify' function, though, whose results will be appended to the
default `:verify' function of command checkers.

\(fn SYMBOL DOCSTRING &rest PROPERTIES)" nil nil)

(function-put 'flycheck-define-command-checker 'lisp-indent-function '1)

(function-put 'flycheck-define-command-checker 'doc-string-elt '2)

(autoload 'flycheck-def-config-file-var "flycheck/flycheck" "\
Define SYMBOL as config file variable for CHECKER, with default FILE-NAME.

SYMBOL is declared as customizable variable using `defcustom', to
provide a configuration file for the given syntax CHECKER.
CUSTOM-ARGS are forwarded to `defcustom'.

FILE-NAME is the initial value of the new variable.  If omitted,
the default value is nil.

Use this together with the `config-file' form in the `:command'
argument to `flycheck-define-checker'.

\(fn SYMBOL CHECKER &optional FILE-NAME &rest CUSTOM-ARGS)" nil t)

(function-put 'flycheck-def-config-file-var 'lisp-indent-function '3)

(autoload 'flycheck-def-option-var "flycheck/flycheck" "\
Define SYMBOL as option variable with INIT-VALUE for CHECKER.

SYMBOL is declared as customizable variable using `defcustom', to
provide an option for the given syntax CHECKERS (a checker or a
list of checkers).  INIT-VALUE is the initial value of the
variable, and DOCSTRING is its docstring.  CUSTOM-ARGS are
forwarded to `defcustom'.

Use this together with the `option', `option-list' and
`option-flag' forms in the `:command' argument to
`flycheck-define-checker'.

\(fn SYMBOL INIT-VALUE CHECKERS DOCSTRING &rest CUSTOM-ARGS)" nil t)

(function-put 'flycheck-def-option-var 'lisp-indent-function '3)

(function-put 'flycheck-def-option-var 'doc-string-elt '4)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flycheck/flycheck" '("flycheck-" "list-flycheck-errors" "locate-rebar3-project-root" "contains-rebar-config" "help-flycheck-checker-d" "read-flycheck-")))

;;;***

;;;### (autoloads nil "highlight-indentation/highlight-indentation"
;;;;;;  "highlight-indentation/highlight-indentation.el" (0 0 0 0))
;;; Generated autoloads from highlight-indentation/highlight-indentation.el

(autoload 'highlight-indentation-mode "highlight-indentation/highlight-indentation" "\
Highlight indentation minor mode highlights indentation based on spaces

\(fn &optional ARG)" t nil)

(autoload 'highlight-indentation-set-offset "highlight-indentation/highlight-indentation" "\
Set indentation offset localy in buffer, will prevent
highlight-indentation from trying to guess indentation offset
from major mode

\(fn OFFSET)" t nil)

(autoload 'highlight-indentation-current-column-mode "highlight-indentation/highlight-indentation" "\
Hilight Indentation minor mode displays a vertical bar
corresponding to the indentation of the current line

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "highlight-indentation/highlight-indentation" '("highlight-indentation-")))

;;;***

;;;### (autoloads nil "ht/ht" "ht/ht.el" (0 0 0 0))
;;; Generated autoloads from ht/ht.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ht/ht" 'nil))

;;;***

;;;### (autoloads nil "hydra/hydra" "hydra/hydra.el" (0 0 0 0))
;;; Generated autoloads from hydra/hydra.el

(autoload 'defhydra "hydra/hydra" "\
Create a Hydra - a family of functions with prefix NAME.

NAME should be a symbol, it will be the prefix of all functions
defined here.

BODY has the format:

    (BODY-MAP BODY-KEY &rest BODY-PLIST)

DOCSTRING will be displayed in the echo area to identify the
Hydra.  When DOCSTRING starts with a newline, special Ruby-style
substitution will be performed by `hydra--format'.

Functions are created on basis of HEADS, each of which has the
format:

    (KEY CMD &optional HINT &rest PLIST)

BODY-MAP is a keymap; `global-map' is used quite often.  Each
function generated from HEADS will be bound in BODY-MAP to
BODY-KEY + KEY (both are strings passed to `kbd'), and will set
the transient map so that all following heads can be called
though KEY only.  BODY-KEY can be an empty string.

CMD is a callable expression: either an interactive function
name, or an interactive lambda, or a single sexp (it will be
wrapped in an interactive lambda).

HINT is a short string that identifies its head.  It will be
printed beside KEY in the echo erea if `hydra-is-helpful' is not
nil.  If you don't even want the KEY to be printed, set HINT
explicitly to nil.

The heads inherit their PLIST from BODY-PLIST and are allowed to
override some keys.  The keys recognized are :exit, :bind, and :column.
:exit can be:

- nil (default): this head will continue the Hydra state.
- t: this head will stop the Hydra state.

:bind can be:
- nil: this head will not be bound in BODY-MAP.
- a lambda taking KEY and CMD used to bind a head.

:column is a string that sets the column for all subsequent heads.

It is possible to omit both BODY-MAP and BODY-KEY if you don't
want to bind anything.  In that case, typically you will bind the
generated NAME/body command.  This command is also the return
result of `defhydra'.

\(fn NAME BODY &optional DOCSTRING &rest HEADS)" nil t)

(function-put 'defhydra 'lisp-indent-function 'defun)

(function-put 'defhydra 'doc-string-elt '3)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hydra/hydra" '("defhydra" "hydra-")))

;;;***

;;;### (autoloads nil "hydra/hydra-examples" "hydra/hydra-examples.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from hydra/hydra-examples.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hydra/hydra-examples" '("hydra-" "org-agenda-cts" "whitespace-mode")))

;;;***

;;;### (autoloads nil "hydra/hydra-ox" "hydra/hydra-ox.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from hydra/hydra-ox.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hydra/hydra-ox" '("hydra-ox")))

;;;***

;;;### (autoloads nil "hydra/hydra-test" "hydra/hydra-test.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from hydra/hydra-test.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hydra/hydra-test" '("hydra-" "remap")))

;;;***

;;;### (autoloads nil "hydra/lv" "hydra/lv.el" (0 0 0 0))
;;; Generated autoloads from hydra/lv.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hydra/lv" '("lv-")))

;;;***

;;;### (autoloads nil "jedi/jedi" "jedi/jedi.el" (0 0 0 0))
;;; Generated autoloads from jedi/jedi.el

(autoload 'jedi:ac-setup "jedi/jedi" "\
Add Jedi AC sources to `ac-sources'.

If auto-completion is all you need, you can call this function instead
of `jedi:setup', like this::

   (add-hook 'python-mode-hook 'jedi:ac-setup)

Note that this function calls `auto-complete-mode' if it is not
already enabled, for people who don't call `global-auto-complete-mode'
in their Emacs configuration.

\(fn)" t nil)

(autoload 'jedi:complete "jedi/jedi" "\
Complete code at point.

\(fn &key (EXPAND ac-expand-on-auto-complete))" t nil)

(autoload 'jedi:auto-complete-mode "jedi/jedi" "\


\(fn)" nil nil)

(setq jedi:setup-function #'jedi:ac-setup jedi:mode-function #'jedi:auto-complete-mode)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "jedi/jedi" '("jedi:")))

;;;***

;;;### (autoloads nil "jedi/jedi-core" "jedi/jedi-core.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from jedi/jedi-core.el

(autoload 'jedi:start-dedicated-server "jedi/jedi-core" "\
Start Jedi server dedicated to this buffer.
This is useful, for example, when you want to use different
`sys.path' for some buffer.  When invoked as an interactive
command, it asks you how to start the Jedi server.  You can edit
the command in minibuffer to specify the way Jedi server run.

If you want to setup how Jedi server is started programmatically
per-buffer/per-project basis, make `jedi:server-command' and
`jedi:server-args' buffer local and set it in `python-mode-hook'.
See also: `jedi:server-args'.

\(fn COMMAND)" t nil)

(autoload 'helm-jedi-related-names "jedi/jedi-core" "\
Find related names of the object at point using `helm' interface.

\(fn)" t nil)

(autoload 'anything-jedi-related-names "jedi/jedi-core" "\
Find related names of the object at point using `anything' interface.

\(fn)" t nil)

(autoload 'jedi:setup "jedi/jedi-core" "\
Fully setup jedi.el for current buffer.
It setups `ac-sources' or `company-backends' and turns
`jedi-mode' on.

This function is intended to be called from `python-mode-hook',
like this::

       (add-hook 'python-mode-hook 'jedi:setup)

You can also call this function as a command, to quickly test
what jedi can do.

\(fn)" t nil)

(autoload 'jedi:install-server "jedi/jedi-core" "\
This command installs Jedi server script jediepcserver.py in a
Python environment dedicated to Emacs.  By default, the
environment is at ``~/.emacs.d/.python-environments/default/``.
This environment is automatically created by ``virtualenv`` if it
does not exist.

Run this command (i.e., type ``M-x jedi:install-server RET``)
whenever Jedi.el shows a message to do so.  It is a good idea to
run this every time after you update Jedi.el to sync version of
Python modules used by Jedi.el and Jedi.el itself.

You can modify the location of the environment by changing
`jedi:environment-root' and/or `python-environment-directory'.  More
specifically, Jedi.el will install Python modules under the directory
``PYTHON-ENVIRONMENT-DIRECTORY/JEDI:ENVIRONMENT-ROOT``.  Note that you
need command line program ``virtualenv``.  If you have the command in
an unusual location, use `python-environment-virtualenv' to specify the
location.

.. NOTE:: jediepcserver.py is installed in a virtual environment but it
   does not mean Jedi.el cannot recognize the modules in virtual
   environment you are using for your Python development.  Jedi
   EPC server recognize the virtualenv it is in (i.e., the
   environment variable ``VIRTUAL_ENV`` in your Emacs) and then
   add modules in that environment to its ``sys.path``.  You can
   also add ``--virtual-env PATH/TO/ENV`` to `jedi:server-args'
   to include modules of virtual environment even you launch
   Emacs outside of the virtual environment.

.. NOTE:: It is highly recommended to use this command to install
   Python modules for Jedi.el.  You still can install Python
   modules used by Jedi.el manually.  However, you are then
   responsible for keeping Jedi.el and Python modules compatible.

See also:

- https://github.com/tkf/emacs-jedi/pull/72
- https://github.com/tkf/emacs-jedi/issues/140#issuecomment-37358527

\(fn)" t nil)

(autoload 'jedi:reinstall-server "jedi/jedi-core" "\
Reinstall Jedi server script jediepcserver.py.

\(fn)" t nil)

(autoload 'jedi:install-server-block "jedi/jedi-core" "\
Blocking version `jedi:install-server'.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "jedi/jedi-core" '("jedi")))

;;;***

;;;### (autoloads nil "jinja2-mode/jinja2-mode" "jinja2-mode/jinja2-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from jinja2-mode/jinja2-mode.el

(autoload 'jinja2-mode "jinja2-mode/jinja2-mode" "\
Major mode for editing jinja2 files

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.jinja2\\'" . jinja2-mode))

(add-to-list 'auto-mode-alist '("\\.j2\\'" . jinja2-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "jinja2-mode/jinja2-mode" '("jinja2-" "sgml-indent-line-num")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-actionscript" "lsp-mode/clients/lsp-actionscript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-actionscript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-actionscript" '("lsp-actionscript-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-ada" "lsp-mode/clients/lsp-ada.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-ada.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-ada" '("lsp-ada-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-angular" "lsp-mode/clients/lsp-angular.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-angular.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-angular" '("lsp-client")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-ansible" "lsp-mode/clients/lsp-ansible.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-ansible.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-ansible" '("lsp-ansible-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-bash" "lsp-mode/clients/lsp-bash.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-bash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-bash" '("lsp-bash-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-beancount" "lsp-mode/clients/lsp-beancount.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-beancount.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-beancount" '("lsp-beancount-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-camel" "lsp-mode/clients/lsp-camel.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-camel.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-camel" '("lsp-camel-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-clangd" "lsp-mode/clients/lsp-clangd.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-clangd.el

(autoload 'lsp-cpp-flycheck-clang-tidy-error-explainer "lsp-mode/clients/lsp-clangd" "\
Explain a clang-tidy ERROR by scraping documentation from llvm.org.

\(fn ERROR)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-clangd" '("lsp-c")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-clojure" "lsp-mode/clients/lsp-clojure.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-clojure.el

(autoload 'lsp-clojure-show-test-tree "lsp-mode/clients/lsp-clojure" "\
Show a test tree and focus on it if IGNORE-FOCUS? is nil.

\(fn IGNORE-FOCUS\\=\\?)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-clojure" '("lsp-clojure-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-crystal" "lsp-mode/clients/lsp-crystal.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-crystal.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-crystal" '("lsp-clients-crystal-executable")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-csharp" "lsp-mode/clients/lsp-csharp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-csharp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-csharp" '("lsp-csharp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-css" "lsp-mode/clients/lsp-css.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-css.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-css" '("lsp-css-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-dockerfile" "lsp-mode/clients/lsp-dockerfile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-dockerfile.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-dockerfile" '("lsp-dockerfile-language-server-command")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-elixir" "lsp-mode/clients/lsp-elixir.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-elixir.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-elixir" '("lsp-elixir-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-elm" "lsp-mode/clients/lsp-elm.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-elm.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-elm" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-emmet" "lsp-mode/clients/lsp-emmet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-emmet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-emmet" '("lsp-emmet-ls-command")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-erlang" "lsp-mode/clients/lsp-erlang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-erlang.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-erlang" '("lsp-erlang-server-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-eslint" "lsp-mode/clients/lsp-eslint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-eslint.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-eslint" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-fortran" "lsp-mode/clients/lsp-fortran.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-fortran.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-fortran" '("lsp-clients-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-fsharp" "lsp-mode/clients/lsp-fsharp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-fsharp.el

(autoload 'lsp-fsharp--workspace-load "lsp-mode/clients/lsp-fsharp" "\
Load all of the provided PROJECTS.

\(fn PROJECTS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-fsharp" '("lsp-fsharp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-gdscript" "lsp-mode/clients/lsp-gdscript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-gdscript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-gdscript" '("lsp-gdscript-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-gleam" "lsp-mode/clients/lsp-gleam.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-gleam.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-gleam" '("lsp-gleam-executable")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-go" "lsp-mode/clients/lsp-go.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-go.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-go" '("lsp-go-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-graphql" "lsp-mode/clients/lsp-graphql.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-graphql.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-graphql" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-groovy" "lsp-mode/clients/lsp-groovy.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-groovy.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-groovy" '("lsp-groovy-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-hack" "lsp-mode/clients/lsp-hack.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-hack.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-hack" '("lsp-clients-hack-command")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-haxe" "lsp-mode/clients/lsp-haxe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-haxe.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-haxe" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-html" "lsp-mode/clients/lsp-html.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-html.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-html" '("lsp-html-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-idris" "lsp-mode/clients/lsp-idris.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-idris.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-idris" '("lsp-idris2-lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-javascript" "lsp-mode/clients/lsp-javascript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-javascript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-javascript" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-json" "lsp-mode/clients/lsp-json.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-json.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-json" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-kotlin" "lsp-mode/clients/lsp-kotlin.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-kotlin.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-kotlin" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-lua" "lsp-mode/clients/lsp-lua.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-lua.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-lua" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-magik" "lsp-mode/clients/lsp-magik.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-magik.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-magik" '("lsp-magik-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-markdown" "lsp-mode/clients/lsp-markdown.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-markdown.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-markdown" '("lsp-markdown-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-nginx" "lsp-mode/clients/lsp-nginx.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-nginx.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-nginx" '("lsp-nginx-server-command")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-nim" "lsp-mode/clients/lsp-nim.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-nim.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-nim" '("lsp-nim-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-nix" "lsp-mode/clients/lsp-nix.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-nix.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-nix" '("lsp-nix-server-path")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-ocaml" "lsp-mode/clients/lsp-ocaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-ocaml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-ocaml" '("lsp-ocaml-l")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-openscad" "lsp-mode/clients/lsp-openscad.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-openscad.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-openscad" '("lsp-openscad-server")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-perl" "lsp-mode/clients/lsp-perl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-perl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-perl" '("lsp-perl-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-perlnavigator" "lsp-mode/clients/lsp-perlnavigator.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-perlnavigator.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-perlnavigator" '("lsp-perlnavigator-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-php" "lsp-mode/clients/lsp-php.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-php.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-php" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-prolog" "lsp-mode/clients/lsp-prolog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-prolog.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-prolog" '("lsp-prolog-server-command")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-purescript" "lsp-mode/clients/lsp-purescript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-purescript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-purescript" '("lsp-purescript-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-pwsh" "lsp-mode/clients/lsp-pwsh.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-pwsh.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-pwsh" '("lsp-pwsh-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-pyls" "lsp-mode/clients/lsp-pyls.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-pyls.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-pyls" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-pylsp" "lsp-mode/clients/lsp-pylsp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-pylsp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-pylsp" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-r" "lsp-mode/clients/lsp-r.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-r.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-r" '("lsp-clients-r-server-command")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-racket" "lsp-mode/clients/lsp-racket.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-racket.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-racket" '("lsp-racket-lang")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-remark" "lsp-mode/clients/lsp-remark.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-remark.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-remark" '("lsp-remark-server-command")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-rf" "lsp-mode/clients/lsp-rf.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-rf.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-rf" '("expand-start-command" "lsp-rf-language-server-" "parse-rf-language-server-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-rust" "lsp-mode/clients/lsp-rust.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-rust.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-rust" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-solargraph" "lsp-mode/clients/lsp-solargraph.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-solargraph.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-solargraph" '("lsp-solargraph-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-sorbet" "lsp-mode/clients/lsp-sorbet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-sorbet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-sorbet" '("lsp-sorbet-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-sqls" "lsp-mode/clients/lsp-sqls.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-sqls.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-sqls" '("lsp-sql")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-steep" "lsp-mode/clients/lsp-steep.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-steep.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-steep" '("lsp-steep-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-svelte" "lsp-mode/clients/lsp-svelte.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-svelte.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-svelte" '("lsp-svelte-plugin-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-terraform" "lsp-mode/clients/lsp-terraform.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-terraform.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-terraform" '("construct-tf-package" "lsp-t")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-tex" "lsp-mode/clients/lsp-tex.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-tex.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-tex" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-toml" "lsp-mode/clients/lsp-toml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-toml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-toml" '("lsp-toml-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-ttcn3" "lsp-mode/clients/lsp-ttcn3.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-ttcn3.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-ttcn3" '("lsp-ttcn3-lsp-server-command")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-typeprof" "lsp-mode/clients/lsp-typeprof.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-typeprof.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-typeprof" '("lsp-typeprof-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-v" "lsp-mode/clients/lsp-v.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-v.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-v" '("lsp-v-vls-executable")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-vala" "lsp-mode/clients/lsp-vala.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-vala.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-vala" '("lsp-clients-vala-ls-executable")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-verilog" "lsp-mode/clients/lsp-verilog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-verilog.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-verilog" '("lsp-clients-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-vetur" "lsp-mode/clients/lsp-vetur.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-vetur.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-vetur" '("lsp-vetur-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-vhdl" "lsp-mode/clients/lsp-vhdl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-vhdl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-vhdl" '("ghdl-ls-bin-name" "hdl-checker-bin-name" "lsp-vhdl-" "vhdl-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-vimscript" "lsp-mode/clients/lsp-vimscript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-vimscript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-vimscript" '("lsp-clients-vim-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-volar" "lsp-mode/clients/lsp-volar.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-volar.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-volar" '("lsp-volar-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-xml" "lsp-mode/clients/lsp-xml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-xml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-xml" '("lsp-xml-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-yaml" "lsp-mode/clients/lsp-yaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-yaml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-yaml" '("lsp-yaml-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-zig" "lsp-mode/clients/lsp-zig.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-zig.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-zig" '("lsp-zig-zls-executable")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-completion" "lsp-mode/lsp-completion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-completion.el

(define-obsolete-variable-alias 'lsp-prefer-capf 'lsp-completion-provider "lsp-mode 7.0.1")

(define-obsolete-variable-alias 'lsp-enable-completion-at-point 'lsp-completion-enable "lsp-mode 7.0.1")

(autoload 'lsp-completion-at-point "lsp-mode/lsp-completion" "\
Get lsp completions." nil nil)

(autoload 'lsp-completion--enable "lsp-mode/lsp-completion" "\
Enable LSP completion support." nil nil)

(autoload 'lsp-completion-mode "lsp-mode/lsp-completion" "\
Toggle LSP completion support.

If called interactively, enable Lsp-Completion mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(add-hook 'lsp-configure-hook (lambda nil (when (and lsp-auto-configure lsp-completion-enable) (lsp-completion--enable))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-completion" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-diagnostics" "lsp-mode/lsp-diagnostics.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-diagnostics.el

(define-obsolete-variable-alias 'lsp-diagnostic-package 'lsp-diagnostics-provider "lsp-mode 7.0.1")

(define-obsolete-variable-alias 'lsp-flycheck-default-level 'lsp-diagnostics-flycheck-default-level "lsp-mode 7.0.1")

(autoload 'lsp-diagnostics-lsp-checker-if-needed "lsp-mode/lsp-diagnostics" nil nil nil)

(autoload 'lsp-diagnostics--enable "lsp-mode/lsp-diagnostics" "\
Enable LSP checker support." nil nil)

(autoload 'lsp-diagnostics-mode "lsp-mode/lsp-diagnostics" "\
Toggle LSP diagnostics integration.

If called interactively, enable Lsp-Diagnostics mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(add-hook 'lsp-configure-hook (lambda nil (when lsp-auto-configure (lsp-diagnostics--enable))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-diagnostics" '("lsp-diagnostics-")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-dired" "lsp-mode/lsp-dired.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-dired.el

(defvar lsp-dired-mode nil "\
Non-nil if Lsp-Dired mode is enabled.
See the `lsp-dired-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `lsp-dired-mode'.")

(custom-autoload 'lsp-dired-mode "lsp-mode/lsp-dired" nil)

(autoload 'lsp-dired-mode "lsp-mode/lsp-dired" "\
Display `lsp-mode' icons for each file in a dired buffer.

If called interactively, enable Lsp-Dired mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-dired" '("lsp-dired-")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-headerline" "lsp-mode/lsp-headerline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-headerline.el

(autoload 'lsp-headerline-breadcrumb-mode "lsp-mode/lsp-headerline" "\
Toggle breadcrumb on headerline.

If called interactively, enable Lsp-Headerline-Breadcrumb mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'lsp-breadcrumb-go-to-symbol "lsp-mode/lsp-headerline" "\
Go to the symbol on breadcrumb at SYMBOL-POSITION.

\(fn SYMBOL-POSITION)" t nil)

(autoload 'lsp-breadcrumb-narrow-to-symbol "lsp-mode/lsp-headerline" "\
Narrow to the symbol range on breadcrumb at SYMBOL-POSITION.

\(fn SYMBOL-POSITION)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-headerline" '("lsp-headerline-")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-icons" "lsp-mode/lsp-icons.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-icons.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-icons" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-ido" "lsp-mode/lsp-ido.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from lsp-mode/lsp-ido.el

(autoload 'lsp-ido-workspace-symbol "lsp-mode/lsp-ido" "\
`ido' for lsp workspace/symbol.
When called with prefix ARG the default selection will be symbol at point.

\(fn ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-ido" '("lsp-ido-")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-iedit" "lsp-mode/lsp-iedit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-iedit.el

(autoload 'lsp-iedit-highlights "lsp-mode/lsp-iedit" "\
Start an `iedit' operation on the documentHighlights at point.
This can be used as a primitive `lsp-rename' replacement if the
language server doesn't support renaming.

See also `lsp-enable-symbol-highlighting'." t nil)

(autoload 'lsp-iedit-linked-ranges "lsp-mode/lsp-iedit" "\
Start an `iedit' for `textDocument/linkedEditingRange'" t nil)

(autoload 'lsp-evil-multiedit-highlights "lsp-mode/lsp-iedit" "\
Start an `evil-multiedit' operation on the documentHighlights at point.
This can be used as a primitive `lsp-rename' replacement if the
language server doesn't support renaming.

See also `lsp-enable-symbol-highlighting'." t nil)

(autoload 'lsp-evil-multiedit-linked-ranges "lsp-mode/lsp-iedit" "\
Start an `evil-multiedit' for `textDocument/linkedEditingRange'" t nil)

(autoload 'lsp-evil-state-highlights "lsp-mode/lsp-iedit" "\
Start `iedit-mode'. for `textDocument/documentHighlight'" t nil)

(autoload 'lsp-evil-state-linked-ranges "lsp-mode/lsp-iedit" "\
Start `iedit-mode'. for `textDocument/linkedEditingRange'" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-iedit" '("lsp-iedit--on-ranges")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-lens" "lsp-mode/lsp-lens.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-lens.el

(autoload 'lsp-lens--enable "lsp-mode/lsp-lens" "\
Enable lens mode." nil nil)

(autoload 'lsp-lens-show "lsp-mode/lsp-lens" "\
Display lenses in the buffer." t nil)

(autoload 'lsp-lens-hide "lsp-mode/lsp-lens" "\
Delete all lenses." t nil)

(autoload 'lsp-lens-mode "lsp-mode/lsp-lens" "\
Toggle code-lens overlays.

If called interactively, enable Lsp-Lens mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'lsp-avy-lens "lsp-mode/lsp-lens" "\
Click lsp lens using `avy' package." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-lens" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-mode" "lsp-mode/lsp-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-mode.el
(put 'lsp-enable-file-watchers 'safe-local-variable #'booleanp)
(put 'lsp-file-watch-ignored-directories 'safe-local-variable 'lsp--string-listp)
(put 'lsp-file-watch-ignored-files 'safe-local-variable 'lsp--string-listp)
(put 'lsp-file-watch-threshold 'safe-local-variable (lambda (i) (or (numberp i) (not i))))

(autoload 'lsp--string-listp "lsp-mode/lsp-mode" "\
Return t if all elements of SEQUENCE are strings, else nil.

\(fn SEQUENCE)" nil nil)

(autoload 'lsp-load-vscode-workspace "lsp-mode/lsp-mode" "\
Load vscode workspace from FILE

\(fn FILE)" t nil)

(autoload 'lsp-save-vscode-workspace "lsp-mode/lsp-mode" "\
Save vscode workspace to FILE

\(fn FILE)" t nil)

(autoload 'lsp-install-server "lsp-mode/lsp-mode" "\
Interactively install or re-install server.
When prefix UPDATE? is t force installation even if the server is present.

\(fn UPDATE\\=\\? &optional SERVER-ID)" t nil)

(autoload 'lsp-update-server "lsp-mode/lsp-mode" "\
Interactively update a server.

\(fn &optional SERVER-ID)" t nil)

(autoload 'lsp-ensure-server "lsp-mode/lsp-mode" "\
Ensure server SERVER-ID

\(fn SERVER-ID)" nil nil)

(autoload 'lsp "lsp-mode/lsp-mode" "\
Entry point for the server startup.
When ARG is t the lsp mode will start new language server even if
there is language server which can handle current language. When
ARG is nil current file will be opened in multi folder language
server if there is such. When `lsp' is called with prefix
argument ask the user to select which language server to start.

\(fn &optional ARG)" t nil)

(autoload 'lsp-deferred "lsp-mode/lsp-mode" "\
Entry point that defers server startup until buffer is visible.
`lsp-deferred' will wait until the buffer is visible before invoking `lsp'.
This avoids overloading the server with many files when starting Emacs." nil nil)

(autoload 'lsp-start-plain "lsp-mode/lsp-mode" "\
Start `lsp-mode' using mininal configuration using the latest `melpa' version of the packages.

In case the major-mode that you are using for " t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-mode" '("defcustom-lsp" "lsp-" "make-lsp-client" "when-lsp-workspace" "with-lsp-workspace")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-modeline" "lsp-mode/lsp-modeline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-modeline.el

(define-obsolete-variable-alias 'lsp-diagnostics-modeline-scope 'lsp-modeline-diagnostics-scope "lsp-mode 7.0.1")

(autoload 'lsp-modeline-code-actions-mode "lsp-mode/lsp-modeline" "\
Toggle code actions on modeline.

If called interactively, enable Lsp-Modeline-Code-Actions mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(define-obsolete-function-alias 'lsp-diagnostics-modeline-mode 'lsp-modeline-diagnostics-mode "lsp-mode 7.0.1")

(autoload 'lsp-modeline-diagnostics-mode "lsp-mode/lsp-modeline" "\
Toggle diagnostics modeline.

If called interactively, enable Lsp-Modeline-Diagnostics mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'lsp-modeline-workspace-status-mode "lsp-mode/lsp-modeline" "\
Toggle workspace status on modeline.

If called interactively, enable Lsp-Modeline-Workspace-Status
mode if ARG is positive, and disable it if ARG is zero or
negative.  If called from Lisp, also enable the mode if ARG is
omitted or nil, and toggle it if ARG is `toggle'; disable the
mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-modeline" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-protocol" "lsp-mode/lsp-protocol.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-protocol.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-protocol" '("dash-expand:&RangeToPoint" "lsp")))

;;;***

;;;### (autoloads nil "lsp-mode/lsp-semantic-tokens" "lsp-mode/lsp-semantic-tokens.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/lsp-semantic-tokens.el

(autoload 'lsp--semantic-tokens-initialize-buffer "lsp-mode/lsp-semantic-tokens" "\
Initialize the buffer for semantic tokens.
IS-RANGE-PROVIDER is non-nil when server supports range requests." nil nil)

(autoload 'lsp--semantic-tokens-initialize-workspace "lsp-mode/lsp-semantic-tokens" "\
Initialize semantic tokens for WORKSPACE.

\(fn WORKSPACE)" nil nil)

(autoload 'lsp-semantic-tokens--warn-about-deprecated-setting "lsp-mode/lsp-semantic-tokens" "\
Warn about deprecated semantic highlighting variable." nil nil)

(autoload 'lsp-semantic-tokens--enable "lsp-mode/lsp-semantic-tokens" "\
Enable semantic tokens mode." nil nil)

(autoload 'lsp-semantic-tokens-mode "lsp-mode/lsp-semantic-tokens" "\
Toggle semantic-tokens support.

If called interactively, enable Lsp-Semantic-Tokens mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/lsp-semantic-tokens" '("lsp-")))

;;;***

;;;### (autoloads nil "markdown-mode/markdown-mode" "markdown-mode/markdown-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode/markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

(autoload 'markdown-view-mode "markdown-mode/markdown-mode" "\
Major mode for viewing Markdown content.

\(fn)" t nil)

(autoload 'gfm-view-mode "markdown-mode/markdown-mode" "\
Major mode for viewing GitHub Flavored Markdown content.

\(fn)" t nil)

(autoload 'markdown-live-preview-mode "markdown-mode/markdown-mode" "\
Toggle native previewing on save for a specific markdown file.

If called interactively, enable Markdown-Live-Preview mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "markdown-mode/markdown-mode" '("defun-markdown-" "gfm-" "markdown")))

;;;***

;;;### (autoloads nil "paredit/paredit" "paredit/paredit.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from paredit/paredit.el

(autoload 'paredit-mode "paredit/paredit" "\
Minor mode for pseudo-structurally editing Lisp code.
With a prefix argument, enable Paredit Mode even if there are
  unbalanced parentheses in the buffer.
Paredit behaves badly if parentheses are unbalanced, so exercise
  caution when forcing Paredit Mode to be enabled, and consider
  fixing unbalanced parentheses instead.
\\<paredit-mode-map>

\(fn &optional ARG)" t nil)

(autoload 'enable-paredit-mode "paredit/paredit" "\
Turn on pseudo-structural editing of Lisp code.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "paredit/paredit" '("paredit-" "?\\" "disable-paredit-mode")))

;;;***

;;;### (autoloads nil "powerline/powerline" "powerline/powerline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from powerline/powerline.el

(autoload 'powerline-hud "powerline/powerline" "\
Return XPM of relative buffer location using FACE1 and FACE2 of optional WIDTH.

\(fn FACE1 FACE2 &optional WIDTH)" nil nil)

(autoload 'powerline-mouse "powerline/powerline" "\
Return mouse handler for CLICK-GROUP given CLICK-TYPE and STRING.

\(fn CLICK-GROUP CLICK-TYPE STRING)" nil nil)

(autoload 'powerline-concat "powerline/powerline" "\
Concatonate STRINGS and pad sides by spaces.

\(fn &rest STRINGS)" nil nil)

(autoload 'defpowerline "powerline/powerline" "\
Create function NAME by wrapping BODY with powerline padding an propetization.

\(fn NAME BODY)" nil t)

(autoload 'powerline-raw "powerline/powerline" "\
Render STR as mode-line data using FACE and optionally PAD import.
PAD can be left (`l') or right (`r').

\(fn STR &optional FACE PAD)" nil nil)

(autoload 'powerline-fill "powerline/powerline" "\
Return empty space using FACE and leaving RESERVE space on the right.

\(fn FACE RESERVE)" nil nil)
 (autoload 'powerline-major-mode "powerline")
 (autoload 'powerline-minor-modes "powerline")
 (autoload 'powerline-narrow "powerline")
 (autoload 'powerline-vc "powerline")
 (autoload 'powerline-encoding "powerline")
 (autoload 'powerline-buffer-size "powerline")
 (autoload 'powerline-buffer-id "powerline")
 (autoload 'powerline-process "powerline")
 (autoload 'powerline-selected-window-active "powerline")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "powerline/powerline" '("pl/" "powerline-")))

;;;***

;;;### (autoloads nil "powerline/powerline-separators" "powerline/powerline-separators.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from powerline/powerline-separators.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "powerline/powerline-separators" '("pl/" "powerline-image-apple-rgb")))

;;;***

;;;### (autoloads nil "powerline/powerline-themes" "powerline/powerline-themes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from powerline/powerline-themes.el

(autoload 'powerline-default-theme "powerline/powerline-themes" "\
Setup the default mode-line." t nil)

(autoload 'powerline-center-theme "powerline/powerline-themes" "\
Setup a mode-line with major and minor modes centered." t nil)

(autoload 'powerline-vim-theme "powerline/powerline-themes" "\
Setup a Vim-like mode-line." t nil)

(autoload 'powerline-nano-theme "powerline/powerline-themes" "\
Setup a nano-like mode-line." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "powerline/powerline-themes" '("powerline-")))

;;;***

;;;### (autoloads nil "pyvenv/pyvenv" "pyvenv/pyvenv.el" (0 0 0 0))
;;; Generated autoloads from pyvenv/pyvenv.el

(autoload 'pyvenv-activate "pyvenv/pyvenv" "\
Activate the virtual environment in DIRECTORY.

\(fn DIRECTORY)" t nil)

(autoload 'pyvenv-deactivate "pyvenv/pyvenv" "\
Deactivate any current virtual environment.

\(fn)" t nil)

(autoload 'pyvenv-workon "pyvenv/pyvenv" "\
Activate a virtual environment from $WORKON_HOME.

If the virtual environment NAME is already active, this function
does not try to reactivate the environment.

\(fn NAME)" t nil)

(defvar pyvenv-mode nil "\
Non-nil if Pyvenv mode is enabled.
See the `pyvenv-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pyvenv-mode'.")

(custom-autoload 'pyvenv-mode "pyvenv/pyvenv" nil)

(autoload 'pyvenv-mode "pyvenv/pyvenv" "\
Global minor mode for pyvenv.

Will show the current virtualenv in the mode line, and respect a
`pyvenv-workon' setting in files.

\(fn &optional ARG)" t nil)

(defvar pyvenv-tracking-mode nil "\
Non-nil if Pyvenv-Tracking mode is enabled.
See the `pyvenv-tracking-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pyvenv-tracking-mode'.")

(custom-autoload 'pyvenv-tracking-mode "pyvenv/pyvenv" nil)

(autoload 'pyvenv-tracking-mode "pyvenv/pyvenv" "\
Global minor mode to track the current virtualenv.

When this mode is active, pyvenv will activate a buffer-specific
virtualenv whenever the user switches to a buffer with a
buffer-local `pyvenv-workon' or `pyvenv-activate' variable.

\(fn &optional ARG)" t nil)

(autoload 'pyvenv-restart-python "pyvenv/pyvenv" "\
Restart Python inferior processes.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pyvenv/pyvenv" '("pyvenv-")))

;;;***

;;;### (autoloads nil "rainbow-delimiters/rainbow-delimiters" "rainbow-delimiters/rainbow-delimiters.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rainbow-delimiters/rainbow-delimiters.el

(autoload 'rainbow-delimiters-mode "rainbow-delimiters/rainbow-delimiters" "\
Highlight nested parentheses, brackets, and braces according to their depth.

\(fn &optional ARG)" t nil)

(autoload 'rainbow-delimiters-mode-enable "rainbow-delimiters/rainbow-delimiters" "\
Enable `rainbow-delimiters-mode'.

\(fn)" nil nil)

(autoload 'rainbow-delimiters-mode-disable "rainbow-delimiters/rainbow-delimiters" "\
Disable `rainbow-delimiters-mode'.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rainbow-delimiters/rainbow-delimiters" '("rainbow-delimiters-")))

;;;***

;;;### (autoloads nil "rainbow-mode/rainbow-mode" "rainbow-mode/rainbow-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rainbow-mode/rainbow-mode.el

(autoload 'rainbow-mode "rainbow-mode/rainbow-mode" "\
Colorize strings that represent colors.
This will fontify with colors the string like \"#aabbcc\" or \"blue\".

If called interactively, enable Rainbow mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rainbow-mode/rainbow-mode" '("rainbow-")))

;;;***

;;;### (autoloads nil "rust-mode/rust-mode" "rust-mode/rust-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from rust-mode/rust-mode.el

(autoload 'rust-mode "rust-mode/rust-mode" "\
Major mode for Rust code.

\\{rust-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rust-mode/rust-mode" '("rust" "cargo-compilation-regexps")))

;;;***

;;;### (autoloads nil "s/s" "s/s.el" (0 0 0 0))
;;; Generated autoloads from s/s.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "s/s" '("s-")))

;;;***

;;;### (autoloads nil "scala-mode/scala-compile" "scala-mode/scala-compile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from scala-mode/scala-compile.el

(autoload 'scala-compile "scala-mode/scala-compile" "\
`compile' specialised to Scala.

First use in a buffer or calling with a prefix will prompt for a
command, otherwise the last command is used.

The command history is global.

A universal argument will invoke `scala-compile-alt', which
will cause the subsequent call to prompt.

A prefix argument will ensure that the user is prompted to
confirm the selection.

A string argument will run the command (for scripting).

\(fn &optional EDIT-COMMAND)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "scala-mode/scala-compile" '("scala-")))

;;;***

;;;### (autoloads nil "scala-mode/scala-mode" "scala-mode/scala-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from scala-mode/scala-mode.el

(autoload 'scala-mode:set-scala-syntax-mode "scala-mode/scala-mode" "\
Sets the syntax-table and other related variables for the current buffer to those of scala-mode. Can be used to make some other major mode (such as sbt-mode) use scala syntax-table.

\(fn)" nil nil)

(autoload 'scala-mode:goto-start-of-code "scala-mode/scala-mode" "\
Go to the start of the real code in the file: object, class or trait.

\(fn)" t nil)

(autoload 'scala-mode "scala-mode/scala-mode" "\
Major mode for editing scala code.

When started, runs `scala-mode-hook'.

\\{scala-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(scala\\|sbt\\|worksheet\\.sc\\)\\'" . scala-mode))

(modify-coding-system-alist 'file "\\.\\(scala\\|sbt\\|worksheet\\.sc\\)\\'" 'utf-8)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "scala-mode/scala-mode" '("scala-mode:")))

;;;***

;;;### (autoloads nil "scala-mode/scala-mode-fontlock" "scala-mode/scala-mode-fontlock.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from scala-mode/scala-mode-fontlock.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "scala-mode/scala-mode-fontlock" '("scala-font-lock:")))

;;;***

;;;### (autoloads nil "scala-mode/scala-mode-imenu" "scala-mode/scala-mode-imenu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from scala-mode/scala-mode-imenu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "scala-mode/scala-mode-imenu" '("scala-imenu:")))

;;;***

;;;### (autoloads nil "scala-mode/scala-mode-indent" "scala-mode/scala-mode-indent.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from scala-mode/scala-mode-indent.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "scala-mode/scala-mode-indent" '("scala-")))

;;;***

;;;### (autoloads nil "scala-mode/scala-mode-lib" "scala-mode/scala-mode-lib.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from scala-mode/scala-mode-lib.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "scala-mode/scala-mode-lib" '("scala-")))

;;;***

;;;### (autoloads nil "scala-mode/scala-mode-map" "scala-mode/scala-mode-map.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from scala-mode/scala-mode-map.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "scala-mode/scala-mode-map" '("scala-mode-map")))

;;;***

;;;### (autoloads nil "scala-mode/scala-mode-paragraph" "scala-mode/scala-mode-paragraph.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from scala-mode/scala-mode-paragraph.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "scala-mode/scala-mode-paragraph" '("scala-paragraph:")))

;;;***

;;;### (autoloads nil "scala-mode/scala-mode-syntax" "scala-mode/scala-mode-syntax.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from scala-mode/scala-mode-syntax.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "scala-mode/scala-mode-syntax" '("scala-syntax:")))

;;;***

;;;### (autoloads nil "spinner/spinner" "spinner/spinner.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from spinner/spinner.el

(autoload 'spinner-create "spinner/spinner" "\
Create a spinner of the given TYPE.
The possible TYPEs are described in `spinner--type-to-frames'.

FPS, if given, is the number of desired frames per second.
Default is `spinner-frames-per-second'.

If BUFFER-LOCAL is non-nil, the spinner will be automatically
deactivated if the buffer is killed.  If BUFFER-LOCAL is a
buffer, use that instead of current buffer.

When started, in order to function properly, the spinner runs a
timer which periodically calls `force-mode-line-update' in the
current buffer.  If BUFFER-LOCAL was set at creation time, then
`force-mode-line-update' is called in that buffer instead.  When
the spinner is stopped, the timer is deactivated.

DELAY, if given, is the number of seconds to wait after starting
the spinner before actually displaying it. It is safe to cancel
the spinner before this time, in which case it won't display at
all.

\(fn &optional TYPE BUFFER-LOCAL FPS DELAY)" nil nil)

(autoload 'spinner-start "spinner/spinner" "\
Start a mode-line spinner of given TYPE-OR-OBJECT.
If TYPE-OR-OBJECT is an object created with `make-spinner',
simply activate it.  This method is designed for minor modes, so
they can use the spinner as part of their lighter by doing:
    '(:eval (spinner-print THE-SPINNER))
To stop this spinner, call `spinner-stop' on it.

If TYPE-OR-OBJECT is anything else, a buffer-local spinner is
created with this type, and it is displayed in the
`mode-line-process' of the buffer it was created it.  Both
TYPE-OR-OBJECT and FPS are passed to `make-spinner' (which see).
To stop this spinner, call `spinner-stop' in the same buffer.

Either way, the return value is a function which can be called
anywhere to stop this spinner.  You can also call `spinner-stop'
in the same buffer where the spinner was created.

FPS, if given, is the number of desired frames per second.
Default is `spinner-frames-per-second'.

DELAY, if given, is the number of seconds to wait until actually
displaying the spinner. It is safe to cancel the spinner before
this time, in which case it won't display at all.

\(fn &optional TYPE-OR-OBJECT FPS DELAY)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "spinner/spinner" '("spinner-")))

;;;***

;;;### (autoloads nil "tuareg-mode/ocamldebug" "tuareg-mode/ocamldebug.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from tuareg-mode/ocamldebug.el

(autoload 'ocamldebug "tuareg-mode/ocamldebug" "\
Run ocamldebug on program FILE in buffer *ocamldebug-FILE*.
The directory containing FILE becomes the initial working directory
and source-file directory for ocamldebug.  If you wish to change this, use
the ocamldebug commands `cd DIR' and `directory'.

\(fn PGM-PATH)" t nil)

(defalias 'camldebug 'ocamldebug)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tuareg-mode/ocamldebug" '("ocamldebug-" "def-ocamldebug")))

;;;***

;;;### (autoloads nil "tuareg-mode/tuareg" "tuareg-mode/tuareg.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from tuareg-mode/tuareg.el
(add-to-list 'auto-mode-alist '("\\.ml[ip]?\\'" . tuareg-mode))
(add-to-list 'auto-mode-alist '("\\.eliomi?\\'" . tuareg-mode))
(dolist (ext '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi"
               ".annot" ".cmt" ".cmti"))
 (add-to-list 'completion-ignored-extensions ext))

(autoload 'tuareg-mode "tuareg-mode/tuareg" "\
Major mode for editing OCaml code.

Dedicated to Emacs and XEmacs, version 21 and higher.  Provides
automatic indentation and compilation interface.  Performs font/color
highlighting using Font-Lock.  It is designed for OCaml but handles
Caml Light as well.

The Font-Lock minor-mode is used according to your customization
options.

You have better byte-compile tuareg.el.

For customization purposes, you should use `tuareg-mode-hook'
\(run for every file) or `tuareg-load-hook' (run once) and not patch
the mode itself.  You should add to your configuration file something like:
  (add-hook 'tuareg-mode-hook
            (lambda ()
               ... ; your customization code
            ))
For example you can change the indentation of some keywords, the
`electric' flags, Font-Lock colors... Every customizable variable is
documented, use `C-h-v' or look at the mode's source code.

`dot-emacs.el' is a sample customization file for standard changes.
You can append it to your `.emacs' or use it as a tutorial.

`M-x ocamldebug' FILE starts the OCaml debugger ocamldebug on the executable
FILE, with input and output in an Emacs buffer named *ocamldebug-FILE*.

A Tuareg Interactive Mode to evaluate expressions in a REPL (aka toplevel) is
included.  Type `M-x tuareg-run-ocaml' or simply `M-x run-ocaml' or see
special-keys below.

Short cuts for the Tuareg mode:
\\{tuareg-mode-map}

Short cuts for interactions with the REPL:
\\{tuareg-interactive-mode-map}

\(fn)" t nil)

(autoload 'tuareg-run-ocaml "tuareg-mode/tuareg" "\
Run an OCaml REPL process.  I/O via buffer `*OCaml*'.

\(fn)" t nil)

(defalias 'run-ocaml 'tuareg-run-ocaml)

(add-to-list 'interpreter-mode-alist '("ocamlrun" . tuareg-mode))

(add-to-list 'interpreter-mode-alist '("ocaml" . tuareg-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tuareg-mode/tuareg" '("tuareg-")))

;;;***

;;;### (autoloads nil "tuareg-mode/tuareg-dune" "tuareg-mode/tuareg-dune.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from tuareg-mode/tuareg-dune.el

(autoload 'tuareg-dune-mode "tuareg-mode/tuareg-dune" "\
Major mode to edit dune files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\(?:\\`\\|/\\)jbuild\\(?:\\.inc\\)?\\'" . tuareg-dune-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tuareg-mode/tuareg-dune" '("tuareg-dune-" "verbose-tuareg-dune-smie-rules")))

;;;***

;;;### (autoloads nil "tuareg-mode/tuareg-menhir" "tuareg-mode/tuareg-menhir.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from tuareg-mode/tuareg-menhir.el

(add-to-list 'auto-mode-alist '("\\.mly\\'" . tuareg-menhir-mode))

(autoload 'tuareg-menhir-mode "tuareg-mode/tuareg-menhir" "\
Major mode to edit Menhir (and Ocamlyacc) files.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tuareg-mode/tuareg-menhir" '("tuareg-menhir-")))

;;;***

;;;### (autoloads nil "tuareg-mode/tuareg-opam" "tuareg-mode/tuareg-opam.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from tuareg-mode/tuareg-opam.el

(autoload 'tuareg-opam-mode "tuareg-mode/tuareg-opam" "\
Major mode to edit opam files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("[./]opam_?\\'" . tuareg-opam-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tuareg-mode/tuareg-opam" '("tuareg-opam-" "verbose-tuareg-opam-smie-rules")))

;;;***

;;;### (autoloads nil "yaml-mode/yaml-mode" "yaml-mode/yaml-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from yaml-mode/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode/yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode/yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode/yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yaml-mode/yaml-mode" '("yaml-")))

;;;***

;;;### (autoloads nil "yasnippet/yasnippet" "yasnippet/yasnippet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

If called interactively, enable Yas minor mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(put 'yas-global-mode 'globalized-minor-mode t)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the `yas-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)
(autoload 'snippet-mode "yasnippet" "A mode for editing yasnippets" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yasnippet/yasnippet" '("help-snippet-def" "snippet-mode-map" "yas")))

;;;***

;;;### (autoloads nil "yasnippet/yasnippet-debug" "yasnippet/yasnippet-debug.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from yasnippet/yasnippet-debug.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yasnippet/yasnippet-debug" '("yas-")))

;;;***

;;;### (autoloads nil "yasnippet/yasnippet-tests" "yasnippet/yasnippet-tests.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from yasnippet/yasnippet-tests.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "yasnippet/yasnippet-tests" '("do-yas-org-native-tab-in-source-block" "yas-")))

;;;***

;;;### (autoloads nil nil ("dash/dash-functional.el" "el-get/el-get-install.el"
;;;;;;  "f/f-shortdoc.el" "lsp-mode/clients/lsp-cmake.el" "lsp-mode/clients/lsp-d.el"
;;;;;;  "lsp-mode/clients/lsp-dhall.el" "lsp-mode/lsp.el" "rainbow-mode/rainbow-mode-autoloads.el"
;;;;;;  "rainbow-mode/rainbow-mode-pkg.el" "scala-mode/scala-mode-prettify-symbols.el")
;;;;;;  (0 0 0 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
