;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "ace-window/ace-window" "ace-window/ace-window.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ace-window/ace-window.el

(autoload 'ace-select-window "ace-window/ace-window" "\
Ace select window." t nil)

(autoload 'ace-delete-window "ace-window/ace-window" "\
Ace delete window." t nil)

(autoload 'ace-swap-window "ace-window/ace-window" "\
Ace swap window." t nil)

(autoload 'ace-delete-other-windows "ace-window/ace-window" "\
Ace delete other windows." t nil)

(autoload 'ace-display-buffer "ace-window/ace-window" "\
Make `display-buffer' and `pop-to-buffer' select using `ace-window'.
See sample config for `display-buffer-base-action' and `display-buffer-alist':
https://github.com/abo-abo/ace-window/wiki/display-buffer.

\(fn BUFFER ALIST)" nil nil)

(autoload 'ace-window "ace-window/ace-window" "\
Select a window.
Perform an action based on ARG described below.

By default, behaves like extended `other-window'.
See `aw-scope' which extends it to work with frames.

Prefixed with one \\[universal-argument], does a swap between the
selected window and the current window, so that the selected
buffer moves to current window (and current buffer moves to
selected window).

Prefixed with two \\[universal-argument]'s, deletes the selected
window.

\(fn ARG)" t nil)

(defvar ace-window-display-mode nil "\
Non-nil if Ace-Window-Display mode is enabled.
See the `ace-window-display-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ace-window-display-mode'.")

(custom-autoload 'ace-window-display-mode "ace-window/ace-window" nil)

(autoload 'ace-window-display-mode "ace-window/ace-window" "\
Minor mode for showing the ace window key in the mode line.

If called interactively, enable Ace-Window-Display mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ace-window/ace-window" '("ace-window-mode" "aw-")))

;;;***

;;;### (autoloads nil "ace-window/ace-window-posframe" "ace-window/ace-window-posframe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ace-window/ace-window-posframe.el

(defvar ace-window-posframe-mode nil "\
Non-nil if Ace-Window-Posframe mode is enabled.
See the `ace-window-posframe-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ace-window-posframe-mode'.")

(custom-autoload 'ace-window-posframe-mode "ace-window/ace-window-posframe" nil)

(autoload 'ace-window-posframe-mode "ace-window/ace-window-posframe" "\
Minor mode for showing the ace window key with child frames.

If called interactively, enable Ace-Window-Posframe mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ace-window/ace-window-posframe" '("ace-window-posframe-" "aw-")))

;;;***

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

;;;### (autoloads nil "avy/avy" "avy/avy.el" (0 0 0 0))
;;; Generated autoloads from avy/avy.el

(autoload 'avy-process "avy/avy" "\
Select one of CANDIDATES using `avy-read'.
Use OVERLAY-FN to visualize the decision overlay.
CLEANUP-FN should take no arguments and remove the effects of
multiple OVERLAY-FN invocations.

\(fn CANDIDATES &optional OVERLAY-FN CLEANUP-FN)" nil nil)

(autoload 'avy-goto-char "avy/avy" "\
Jump to the currently visible CHAR.
The window scope is determined by `avy-all-windows' (ARG negates it).

\(fn CHAR &optional ARG)" t nil)

(autoload 'avy-goto-char-in-line "avy/avy" "\
Jump to the currently visible CHAR in the current line.

\(fn CHAR)" t nil)

(autoload 'avy-goto-char-2 "avy/avy" "\
Jump to the currently visible CHAR1 followed by CHAR2.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.

\(fn CHAR1 CHAR2 &optional ARG BEG END)" t nil)

(autoload 'avy-goto-char-2-above "avy/avy" "\
Jump to the currently visible CHAR1 followed by CHAR2.
This is a scoped version of `avy-goto-char-2', where the scope is
the visible part of the current buffer up to point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

\(fn CHAR1 CHAR2 &optional ARG)" t nil)

(autoload 'avy-goto-char-2-below "avy/avy" "\
Jump to the currently visible CHAR1 followed by CHAR2.
This is a scoped version of `avy-goto-char-2', where the scope is
the visible part of the current buffer following point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

\(fn CHAR1 CHAR2 &optional ARG)" t nil)

(autoload 'avy-isearch "avy/avy" "\
Jump to one of the current isearch candidates." t nil)

(autoload 'avy-goto-word-0 "avy/avy" "\
Jump to a word start.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.

\(fn ARG &optional BEG END)" t nil)

(autoload 'avy-goto-whitespace-end "avy/avy" "\
Jump to the end of a whitespace sequence.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.

\(fn ARG &optional BEG END)" t nil)

(autoload 'avy-goto-word-1 "avy/avy" "\
Jump to the currently visible CHAR at a word start.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.
BEG and END narrow the scope where candidates are searched.
When SYMBOL is non-nil, jump to symbol start instead of word start.

\(fn CHAR &optional ARG BEG END SYMBOL)" t nil)

(autoload 'avy-goto-word-1-above "avy/avy" "\
Jump to the currently visible CHAR at a word start.
This is a scoped version of `avy-goto-word-1', where the scope is
the visible part of the current buffer up to point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

\(fn CHAR &optional ARG)" t nil)

(autoload 'avy-goto-word-1-below "avy/avy" "\
Jump to the currently visible CHAR at a word start.
This is a scoped version of `avy-goto-word-1', where the scope is
the visible part of the current buffer following point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

\(fn CHAR &optional ARG)" t nil)

(autoload 'avy-goto-symbol-1 "avy/avy" "\
Jump to the currently visible CHAR at a symbol start.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

\(fn CHAR &optional ARG)" t nil)

(autoload 'avy-goto-symbol-1-above "avy/avy" "\
Jump to the currently visible CHAR at a symbol start.
This is a scoped version of `avy-goto-symbol-1', where the scope is
the visible part of the current buffer up to point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

\(fn CHAR &optional ARG)" t nil)

(autoload 'avy-goto-symbol-1-below "avy/avy" "\
Jump to the currently visible CHAR at a symbol start.
This is a scoped version of `avy-goto-symbol-1', where the scope is
the visible part of the current buffer following point.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

\(fn CHAR &optional ARG)" t nil)

(autoload 'avy-goto-subword-0 "avy/avy" "\
Jump to a word or subword start.
The window scope is determined by `avy-all-windows' (ARG negates it).

When PREDICATE is non-nil it's a function of zero parameters that
should return true.

BEG and END narrow the scope where candidates are searched.

\(fn &optional ARG PREDICATE BEG END)" t nil)

(autoload 'avy-goto-subword-1 "avy/avy" "\
Jump to the currently visible CHAR at a subword start.
The window scope is determined by `avy-all-windows' (ARG negates it).
The case of CHAR is ignored.

\(fn CHAR &optional ARG)" t nil)

(autoload 'avy-goto-word-or-subword-1 "avy/avy" "\
Forward to `avy-goto-subword-1' or `avy-goto-word-1'.
Which one depends on variable `subword-mode'." t nil)

(autoload 'avy-goto-line "avy/avy" "\
Jump to a line start in current buffer.

When ARG is 1, jump to lines currently visible, with the option
to cancel to `goto-line' by entering a number.

When ARG is 4, negate the window scope determined by
`avy-all-windows'.

Otherwise, forward to `goto-line' with ARG.

\(fn &optional ARG)" t nil)

(autoload 'avy-goto-line-above "avy/avy" "\
Goto visible line above the cursor.
OFFSET changes the distance between the closest key to the cursor and
the cursor
When BOTTOM-UP is non-nil, display avy candidates from top to bottom

\(fn &optional OFFSET BOTTOM-UP)" t nil)

(autoload 'avy-goto-line-below "avy/avy" "\
Goto visible line below the cursor.
OFFSET changes the distance between the closest key to the cursor and
the cursor
When BOTTOM-UP is non-nil, display avy candidates from top to bottom

\(fn &optional OFFSET BOTTOM-UP)" t nil)

(autoload 'avy-goto-end-of-line "avy/avy" "\
Call `avy-goto-line' and move to the end of the line.

\(fn &optional ARG)" t nil)

(autoload 'avy-copy-line "avy/avy" "\
Copy a selected line above the current line.
ARG lines can be used.

\(fn ARG)" t nil)

(autoload 'avy-move-line "avy/avy" "\
Move a selected line above the current line.
ARG lines can be used.

\(fn ARG)" t nil)

(autoload 'avy-copy-region "avy/avy" "\
Select two lines and copy the text between them to point.

The window scope is determined by `avy-all-windows' or
`avy-all-windows-alt' when ARG is non-nil.

\(fn ARG)" t nil)

(autoload 'avy-move-region "avy/avy" "\
Select two lines and move the text between them above the current line." t nil)

(autoload 'avy-kill-region "avy/avy" "\
Select two lines and kill the region between them.

The window scope is determined by `avy-all-windows' or
`avy-all-windows-alt' when ARG is non-nil.

\(fn ARG)" t nil)

(autoload 'avy-kill-ring-save-region "avy/avy" "\
Select two lines and save the region between them to the kill ring.
The window scope is determined by `avy-all-windows'.
When ARG is non-nil, do the opposite of `avy-all-windows'.

\(fn ARG)" t nil)

(autoload 'avy-kill-whole-line "avy/avy" "\
Select line and kill the whole selected line.

With a numerical prefix ARG, kill ARG line(s) starting from the
selected line.  If ARG is negative, kill backward.

If ARG is zero, kill the selected line but exclude the trailing
newline.

\\[universal-argument] 3 \\[avy-kil-whole-line] kill three lines
starting from the selected line.  \\[universal-argument] -3

\\[avy-kill-whole-line] kill three lines backward including the
selected line.

\(fn ARG)" t nil)

(autoload 'avy-kill-ring-save-whole-line "avy/avy" "\
Select line and save the whole selected line as if killed, but don’t kill it.

This command is similar to `avy-kill-whole-line', except that it
saves the line(s) as if killed, but does not kill it(them).

With a numerical prefix ARG, kill ARG line(s) starting from the
selected line.  If ARG is negative, kill backward.

If ARG is zero, kill the selected line but exclude the trailing
newline.

\(fn ARG)" t nil)

(autoload 'avy-setup-default "avy/avy" "\
Setup the default shortcuts." nil nil)

(autoload 'avy-goto-char-timer "avy/avy" "\
Read one or many consecutive chars and jump to the first one.
The window scope is determined by `avy-all-windows' (ARG negates it).

\(fn &optional ARG)" t nil)

(autoload 'avy-transpose-lines-in-region "avy/avy" "\
Transpose lines in the active region." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "avy/avy" '("avy-")))

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

;;;### (autoloads nil "bui/bui" "bui/bui.el" (0 0 0 0))
;;; Generated autoloads from bui/bui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bui/bui" '("bui-define-")))

;;;***

;;;### (autoloads nil "bui/bui-button" "bui/bui-button.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from bui/bui-button.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bui/bui-button" '("bui")))

;;;***

;;;### (autoloads nil "bui/bui-core" "bui/bui-core.el" (0 0 0 0))
;;; Generated autoloads from bui/bui-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bui/bui-core" '("bui-")))

;;;***

;;;### (autoloads nil "bui/bui-entry" "bui/bui-entry.el" (0 0 0 0))
;;; Generated autoloads from bui/bui-entry.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bui/bui-entry" '("bui-")))

;;;***

;;;### (autoloads nil "bui/bui-history" "bui/bui-history.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from bui/bui-history.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bui/bui-history" '("bui-history")))

;;;***

;;;### (autoloads nil "bui/bui-info" "bui/bui-info.el" (0 0 0 0))
;;; Generated autoloads from bui/bui-info.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bui/bui-info" '("bui-info-")))

;;;***

;;;### (autoloads nil "bui/bui-list" "bui/bui-list.el" (0 0 0 0))
;;; Generated autoloads from bui/bui-list.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bui/bui-list" '("bui-list-")))

;;;***

;;;### (autoloads nil "bui/bui-utils" "bui/bui-utils.el" (0 0 0 0))
;;; Generated autoloads from bui/bui-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bui/bui-utils" '("bui-")))

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

;;;### (autoloads nil "lsp-mode/clients/lsp-astro" "lsp-mode/clients/lsp-astro.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-astro.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-astro" '("lsp-astro--get-initialization-options")))

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

;;;### (autoloads nil "lsp-mode/clients/lsp-dot" "lsp-mode/clients/lsp-dot.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-dot.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-dot" '("lsp-dot--dot-ls-server-command")))

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

;;;### (autoloads nil "lsp-mode/clients/lsp-marksman" "lsp-mode/clients/lsp-marksman.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-marksman.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-marksman" '("lsp-marksman-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-mint" "lsp-mode/clients/lsp-mint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-mint.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-mint" '("lsp-clients-mint-executable")))

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

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-nix" '("lsp-nix-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-ocaml" "lsp-mode/clients/lsp-ocaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-ocaml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-ocaml" '("lsp-")))

;;;***

;;;### (autoloads nil "lsp-mode/clients/lsp-openscad" "lsp-mode/clients/lsp-openscad.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-openscad.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-openscad" '("lsp-openscad-")))

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

;;;### (autoloads nil "lsp-mode/clients/lsp-pls" "lsp-mode/clients/lsp-pls.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-pls.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-pls" '("lsp-pls-")))

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

;;;### (autoloads nil "lsp-mode/clients/lsp-ruby-syntax-tree" "lsp-mode/clients/lsp-ruby-syntax-tree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from lsp-mode/clients/lsp-ruby-syntax-tree.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "lsp-mode/clients/lsp-ruby-syntax-tree" '("lsp-ruby-syntax-tree-")))

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

(autoload 'lsp-uninstall-server "lsp-mode/lsp-mode" "\
Delete a LSP server from `lsp-server-install-dir'.

\(fn DIR)" t nil)

(autoload 'lsp-update-server "lsp-mode/lsp-mode" "\
Interactively update (reinstall) a server.

\(fn &optional SERVER-ID)" t nil)

(autoload 'lsp-update-servers "lsp-mode/lsp-mode" "\
Update (reinstall) all installed servers." t nil)

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
Start `lsp-mode' using mininal configuration using the latest `melpa' version
of the packages.

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

(defvar-local semantic-token-modifier-cache (make-hash-table) "\
A cache of modifier values to the selected fonts.
This allows whole-bitmap lookup instead of checking each bit. The
expectation is that usage of modifiers will tend to cluster, so
we will not have the full range of possible usages, hence a
tractable hash map.

This is set as buffer-local. It should probably be shared in a
given workspace/language-server combination.

This cache should be flushed every time any modifier
configuration changes.")

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

;;;### (autoloads nil "pfuture/pfuture" "pfuture/pfuture.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from pfuture/pfuture.el

(autoload 'pfuture-new "pfuture/pfuture" "\
Create a new future process for command CMD.
Any arguments after the command are interpreted as arguments to the command.
This will return a process object with additional \\='stderr and \\='stdout
properties, which can be read via (process-get process \\='stdout) and
\(process-get process \\='stderr) or alternatively with
\(pfuture-result process) or (pfuture-stderr process).

Note that CMD must be a *sequence* of strings, meaning
this is wrong: (pfuture-new \"git status\")
this is right: (pfuture-new \"git\" \"status\")

\(fn &rest CMD)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pfuture/pfuture" '("pfuture-")))

;;;***

;;;### (autoloads nil "posframe/posframe" "posframe/posframe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from posframe/posframe.el

(autoload 'posframe-workable-p "posframe/posframe" "\
Test posframe workable status." nil nil)

(autoload 'posframe-show "posframe/posframe" "\
Pop up a posframe to show STRING at POSITION.

 (1) POSITION

POSITION can be:
1. An integer, meaning point position.
2. A cons of two integers, meaning absolute X and Y coordinates.
3. Other type, in which case the corresponding POSHANDLER should be
   provided.

 (2) POSHANDLER

POSHANDLER is a function of one argument returning an actual
position.  Its argument is a plist of the following form:

  (:position xxx
   :poshandler xxx
   :font-height xxx
   :font-width xxx
   :posframe xxx
   :posframe-width xxx
   :posframe-height xxx
   :posframe-buffer xxx
   :parent-frame xxx
   :parent-window-left xxx
   :parent-window-top xxx
   :parent-frame-width xxx
   :parent-frame-height xxx
   :parent-window xxx
   :parent-window-width  xxx
   :parent-window-height xxx
   :mouse-x xxx
   ;mouse-y xxx
   :minibuffer-height xxx
   :mode-line-height  xxx
   :header-line-height xxx
   :tab-line-height xxx
   :x-pixel-offset xxx
   :y-pixel-offset xxx)

By default, poshandler is auto-selected based on the type of POSITION,
but the selection can be overridden using the POSHANDLER argument.

The builtin poshandler functions are listed below:

1.  `posframe-poshandler-frame-center'
2.  `posframe-poshandler-frame-top-center'
3.  `posframe-poshandler-frame-top-left-corner'
4.  `posframe-poshandler-frame-top-right-corner'
5.  `posframe-poshandler-frame-bottom-center'
6.  `posframe-poshandler-frame-bottom-left-corner'
7.  `posframe-poshandler-frame-bottom-right-corner'
8.  `posframe-poshandler-window-center'
9.  `posframe-poshandler-window-top-center'
10. `posframe-poshandler-window-top-left-corner'
11. `posframe-poshandler-window-top-right-corner'
12. `posframe-poshandler-window-bottom-center'
13. `posframe-poshandler-window-bottom-left-corner'
14. `posframe-poshandler-window-bottom-right-corner'
15. `posframe-poshandler-point-top-left-corner'
16. `posframe-poshandler-point-bottom-left-corner'
17. `posframe-poshandler-point-bottom-left-corner-upward'
18. `posframe-poshandler-point-window-center'
19. `posframe-poshandler-point-frame-center'

 (3) POSHANDLER-EXTRA-INFO

POSHANDLER-EXTRA-INFO is a plist, which will prepend to the
argument of poshandler function: `info', it will *OVERRIDE* the
exist key in `info'.

 (4) BUFFER-OR-NAME

This posframe's buffer is BUFFER-OR-NAME, which can be a buffer
or a name of a (possibly nonexistent) buffer.

buffer name can prefix with space, for example \" *mybuffer*\", so
the buffer name will hide for ibuffer and `list-buffers'.

 (5) NO-PROPERTIES

If NO-PROPERTIES is non-nil, The STRING's properties will
be removed before being shown in posframe.

 (6) HEIGHT, MAX-HEIGHT, MIN-HEIGHT, WIDTH, MAX-WIDTH and MIN-WIDTH

These arguments are specified in the canonical character width
and height of posframe, more details can be found in docstring of
function `fit-frame-to-buffer',

 (7) LEFT-FRINGE and RIGHT-FRINGE

If LEFT-FRINGE or RIGHT-FRINGE is a number, left fringe or
right fringe with be shown with the specified width.

 (8) BORDER-WIDTH, BORDER-COLOR, INTERNAL-BORDER-WIDTH and INTERNAL-BORDER-COLOR

By default, posframe shows no borders, but users can specify
borders by setting BORDER-WIDTH to a positive number.  Border
color can be specified by BORDER-COLOR.

INTERNAL-BORDER-WIDTH and INTERNAL-BORDER-COLOR are same as
BORDER-WIDTH and BORDER-COLOR, but do not suggest to use for the
reason:

   Add distinct controls for child frames' borders (Bug#45620)
   http://git.savannah.gnu.org/cgit/emacs.git/commit/?id=ff7b1a133bfa7f2614650f8551824ffaef13fadc

 (9) FONT, FOREGROUND-COLOR and BACKGROUND-COLOR

Posframe's font as well as foreground and background colors are
derived from the current frame by default, but can be overridden
using the FONT, FOREGROUND-COLOR and BACKGROUND-COLOR arguments,
respectively.

 (10) RESPECT-HEADER-LINE and RESPECT-MODE-LINE

By default, posframe will display no header-line, mode-line and
tab-line.  In case a header-line, mode-line or tab-line is
desired, users can set RESPECT-HEADER-LINE and RESPECT-MODE-LINE
to t.

 (11) INITIALIZE

INITIALIZE is a function with no argument.  It will run when
posframe buffer is first selected with `with-current-buffer'
in `posframe-show', and only run once (for performance reasons).

 (12) LINES-TRUNCATE

If LINES-TRUNCATE is non-nil, then lines will truncate in the
posframe instead of wrap.

 (13) OVERRIDE-PARAMETERS

OVERRIDE-PARAMETERS is very powful, *all* the valid frame parameters
used by posframe's frame can be overridden by it.

NOTE: some `posframe-show' arguments are not frame parameters, so they
can not be overrided by this argument.

 (14) TIMEOUT

TIMEOUT can specify the number of seconds after which the posframe
will auto-hide.

 (15) REFRESH

If REFRESH is a number, posframe's frame-size will be re-adjusted
every REFRESH seconds.

 (16) ACCEPT-FOCUS

When ACCEPT-FOCUS is non-nil, posframe will accept focus.
be careful, you may face some bugs when set it to non-nil.

 (17) HIDEHANDLER

HIDEHANDLER is a function, when it return t, posframe will be
hide, this function has a plist argument:

  (:posframe-buffer xxx
   :posframe-parent-buffer xxx)

The builtin hidehandler functions are listed below:

1. `posframe-hidehandler-when-buffer-switch'

 (18) REFPOSHANDLER

REFPOSHANDLER is a function, a reference position (most is
top-left of current frame) will be returned when call this
function.

when it is nil or it return nil, child-frame feature will be used
and reference position will be deal with in Emacs.

The user case I know at the moment is let ivy-posframe work well
in EXWM environment (let posframe show on the other appliction
window).

         DO NOT USE UNLESS NECESSARY!!!

An example parent frame poshandler function is:

1. `posframe-refposhandler-xwininfo'

 (19) Others

You can use `posframe-delete-all' to delete all posframes.

\(fn BUFFER-OR-NAME &key STRING POSITION POSHANDLER POSHANDLER-EXTRA-INFO WIDTH HEIGHT MAX-WIDTH MAX-HEIGHT MIN-WIDTH MIN-HEIGHT X-PIXEL-OFFSET Y-PIXEL-OFFSET LEFT-FRINGE RIGHT-FRINGE BORDER-WIDTH BORDER-COLOR INTERNAL-BORDER-WIDTH INTERNAL-BORDER-COLOR FONT FOREGROUND-COLOR BACKGROUND-COLOR RESPECT-HEADER-LINE RESPECT-MODE-LINE INITIALIZE NO-PROPERTIES KEEP-RATIO LINES-TRUNCATE OVERRIDE-PARAMETERS TIMEOUT REFRESH ACCEPT-FOCUS HIDEHANDLER REFPOSHANDLER &allow-other-keys)" nil nil)

(autoload 'posframe-hide-all "posframe/posframe" "\
Hide all posframe frames." t nil)

(autoload 'posframe-delete-all "posframe/posframe" "\
Delete all posframe frames and buffers." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "posframe/posframe" '("posframe-")))

;;;***

;;;### (autoloads nil "posframe/posframe-benchmark" "posframe/posframe-benchmark.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from posframe/posframe-benchmark.el

(autoload 'posframe-benchmark "posframe/posframe-benchmark" "\
Benchmark tool for posframe." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "posframe/posframe-benchmark" '("posframe-benchmark-alist")))

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

;;;### (autoloads nil "request/request" "request/request.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from request/request.el

(autoload 'request-response-header "request/request" "\
Fetch the values of RESPONSE header field named FIELD-NAME.

It returns comma separated values when the header has multiple
field with the same name, as :RFC:`2616` specifies.

Examples::

  (request-response-header response
                           \"content-type\") ; => \"text/html; charset=utf-8\"
  (request-response-header response
                           \"unknown-field\") ; => nil

\(fn RESPONSE FIELD-NAME)" nil nil)

(autoload 'request-response-headers "request/request" "\
Return RESPONSE headers as an alist.
I would have chosen a function name that wasn't so suggestive that
`headers` is a member of the `request-response` struct, but
as there's already precedent with `request-response-header', I
hew to consistency.

\(fn RESPONSE)" nil nil)

(autoload 'request "request/request" "\
Main entry requesting URL with property list SETTINGS as follow.

==================== ========================================================
Keyword argument      Explanation
==================== ========================================================
TYPE          (string)   type of request to make: POST/GET/PUT/DELETE
PARAMS         (alist)   set \"?key=val\" part in URL
DATA    (string/alist)   data to be sent to the server
FILES          (alist)   files to be sent to the server (see below)
PARSER        (symbol)   a function that reads current buffer and return data
HEADERS        (alist)   additional headers to send with the request
ENCODING      (symbol)   encoding for request body (utf-8 by default)
SUCCESS     (function)   called on success
ERROR       (function)   called on error
COMPLETE    (function)   called on both success and error
TIMEOUT       (number)   timeout in second
STATUS-CODE    (alist)   map status code (int) to callback
SYNC            (bool)   If non-nil, wait until request is done. Default is nil.
==================== ========================================================


* Callback functions

Callback functions STATUS, ERROR, COMPLETE and `cdr\\='s in element of
the alist STATUS-CODE take same keyword arguments listed below.  For
forward compatibility, these functions must ignore unused keyword
arguments (i.e., it\\='s better to use `&allow-other-keys\\=' [#]_).::

    (CALLBACK                      ; SUCCESS/ERROR/COMPLETE/STATUS-CODE
     :data          data           ; whatever PARSER function returns, or nil
     :error-thrown  error-thrown   ; (ERROR-SYMBOL . DATA), or nil
     :symbol-status symbol-status  ; success/error/timeout/abort/parse-error
     :response      response       ; request-response object
     ...)

.. [#] `&allow-other-keys\\=' is a special \"markers\" available in macros
   in the CL library for function definition such as `cl-defun\\=' and
   `cl-function\\='.  Without this marker, you need to specify all arguments
   to be passed.  This becomes problem when request.el adds new arguments
   when calling callback functions.  If you use `&allow-other-keys\\='
   (or manually ignore other arguments), your code is free from this
   problem.  See info node `(cl) Argument Lists\\=' for more information.

Arguments data, error-thrown, symbol-status can be accessed by
`request-response-data\\=', `request-response-error-thrown\\=',
`request-response-symbol-status\\=' accessors, i.e.::

    (request-response-data RESPONSE)  ; same as data

Response object holds other information which can be accessed by
the following accessors:
`request-response-status-code\\=',
`request-response-url\\=' and
`request-response-settings\\='

* STATUS-CODE callback

STATUS-CODE is an alist of the following format::

    ((N-1 . CALLBACK-1)
     (N-2 . CALLBACK-2)
     ...)

Here, N-1, N-2,... are integer status codes such as 200.


* FILES

FILES is an alist of the following format::

    ((NAME-1 . FILE-1)
     (NAME-2 . FILE-2)
     ...)

where FILE-N is a list of the form::

    (FILENAME &key PATH BUFFER STRING MIME-TYPE)

FILE-N can also be a string (path to the file) or a buffer object.
In that case, FILENAME is set to the file name or buffer name.

Example FILES argument::

    `((\"passwd\"   . \"/etc/passwd\")                ; filename = passwd
      (\"scratch\"  . ,(get-buffer \"*scratch*\"))    ; filename = *scratch*
      (\"passwd2\"  . (\"password.txt\" :file \"/etc/passwd\"))
      (\"scratch2\" . (\"scratch.txt\"  :buffer ,(get-buffer \"*scratch*\")))
      (\"data\"     . (\"data.csv\"     :data \"1,2,3\\n4,5,6\\n\")))

.. note:: FILES is implemented only for curl backend for now.
   As furl.el_ supports multipart POST, it should be possible to
   support FILES in pure elisp by making furl.el_ another backend.
   Contributions are welcome.

   .. _furl.el: https://code.google.com/p/furl-el/


* PARSER function

PARSER function takes no argument and it is executed in the
buffer with HTTP response body.  The current position in the HTTP
response buffer is at the beginning of the buffer.  As the HTTP
header is stripped off, the cursor is actually at the beginning
of the response body.  So, for example, you can pass `json-read\\='
to parse JSON object in the buffer.  To fetch whole response as a
string, pass `buffer-string\\='.

When using `json-read\\=', it is useful to know that the returned
type can be modified by `json-object-type\\=', `json-array-type\\=',
`json-key-type\\=', `json-false\\=' and `json-null\\='.  See docstring of
each function for what it does.  For example, to convert JSON
objects to plist instead of alist, wrap `json-read\\=' by `lambda\\='
like this.::

    (request
     \"https://...\"
     :parser (lambda ()
               (let ((json-object-type \\='plist))
                 (json-read)))
     ...)

This is analogous to the `dataType\\=' argument of jQuery.ajax_.
Only this function can access to the process buffer, which
is killed immediately after the execution of this function.

* SYNC

Synchronous request is functional, but *please* don\\='t use it
other than testing or debugging.  Emacs users have better things
to do rather than waiting for HTTP request.  If you want a better
way to write callback chains, use `request-deferred\\='.

If you can\\='t avoid using it (e.g., you are inside of some hook
which must return some value), make sure to set TIMEOUT to
relatively small value.

Due to limitation of `url-retrieve-synchronously\\=', response slots
`request-response-error-thrown\\=', `request-response-history\\=' and
`request-response-url\\=' are unknown (always nil) when using
synchronous request with `url-retrieve\\=' backend.

* Note

API of `request\\=' is somewhat mixture of jQuery.ajax_ (Javascript)
and requests.request_ (Python).

.. _jQuery.ajax: https://api.jquery.com/jQuery.ajax/
.. _requests.request: https://docs.python-requests.org

\(fn URL &rest SETTINGS &key (PARAMS nil) (DATA nil) (HEADERS nil) (ENCODING \\='utf-8) (ERROR nil) (SYNC nil) (RESPONSE (make-request-response)) &allow-other-keys)" nil nil)

(function-put 'request 'lisp-indent-function 'defun)

(autoload 'request-untrampify-filename "request/request" "\
Return FILE as the local file name.

\(fn FILE)" nil nil)

(autoload 'request-abort "request/request" "\
Abort request for RESPONSE (the object returned by `request').
Note that this function invoke ERROR and COMPLETE callbacks.
Callbacks may not be called immediately but called later when
associated process is exited.

\(fn RESPONSE)" nil nil)

(autoload 'request-auto-revert-notify-rm-watch "request/request" "\
Backport of M. Engdegard's fix of `auto-revert-notify-rm-watch'." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "request/request" '("request-")))

;;;***

;;;### (autoloads nil "request/request-deferred" "request/request-deferred.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from request/request-deferred.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "request/request-deferred" '("request-deferred")))

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

;;;### (autoloads nil "tree-mode/tree-mode" "tree-mode/tree-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from tree-mode/tree-mode.el

(autoload 'tree-minor-mode "tree-mode/tree-mode" "\
More keybindings for tree-widget.

If called interactively, enable Tree minor mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\\{tree-mode-map}

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "tree-mode/tree-mode" '("tree-mode")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs" "treemacs/src/elisp/treemacs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs.el

(autoload 'treemacs-version "treemacs/src/elisp/treemacs" "\
Return the `treemacs-version'." t nil)

(autoload 'treemacs "treemacs/src/elisp/treemacs" "\
Initialise or toggle treemacs.
- If the treemacs window is visible hide it.
- If a treemacs buffer exists, but is not visible show it.
- If no treemacs buffer exists for the current frame create and show it.
- If the workspace is empty additionally ask for the root path of the first
  project to add.
- With a prefix ARG launch treemacs and force it to select a workspace

\(fn &optional ARG)" t nil)

(autoload 'treemacs-select-directory "treemacs/src/elisp/treemacs" "\
Select a directory to open in treemacs.
This command will open *just* the selected directory in treemacs.  If there are
other projects in the workspace they will be removed.

To *add* a project to the current workspace use
`treemacs-add-project-to-workspace' or
`treemacs-add-and-display-current-project' instead." t nil)

(autoload 'treemacs-find-file "treemacs/src/elisp/treemacs" "\
Find and focus the current file in the treemacs window.
If the current buffer has visits no file or with a prefix ARG ask for the
file instead.
Will show/create a treemacs buffers if it is not visible/does not exist.
For the most part only useful when `treemacs-follow-mode' is not active.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-find-tag "treemacs/src/elisp/treemacs" "\
Find and move point to the tag at point in the treemacs view.
Most likely to be useful when `treemacs-tag-follow-mode' is not active.

Will ask to change the treemacs root if the file to find is not under the
root.  If no treemacs buffer exists it will be created with the current file's
containing directory as root.  Will do nothing if the current buffer is not
visiting a file or Emacs cannot find any tags for the current file." t nil)

(autoload 'treemacs-select-window "treemacs/src/elisp/treemacs" "\
Select the treemacs window if it is visible.
Bring it to the foreground if it is not visible.
Initialise a new treemacs buffer as calling `treemacs' would if there is no
treemacs buffer for this frame.

In case treemacs is already selected behaviour will depend on
`treemacs-select-when-already-in-treemacs'.

A non-nil prefix ARG will also force a workspace switch.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-show-changelog "treemacs/src/elisp/treemacs" "\
Show the changelog of treemacs." t nil)

(autoload 'treemacs-edit-workspaces "treemacs/src/elisp/treemacs" "\
Edit your treemacs workspaces and projects as an `org-mode' file." t nil)

(autoload 'treemacs-add-and-display-current-project-exclusively "treemacs/src/elisp/treemacs" "\
Display the current project, and *only* the current project.
Like `treemacs-add-and-display-current-project' this will add the current
project to treemacs based on either projectile, the built-in project.el, or the
current working directory.

However the \\='exclusive\\=' part means that it will make the current project
the only project, all other projects *will be removed* from the current
workspace." t nil)

(autoload 'treemacs-add-and-display-current-project "treemacs/src/elisp/treemacs" "\
Open treemacs and add the current project root to the workspace.
The project is determined first by projectile (if treemacs-projectile is
installed), then by project.el, then by the current working directory.

If the project is already registered with treemacs just move point to its root.
An error message is displayed if the current buffer is not part of any project." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs" '("treemacs-version")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-annotations" "treemacs/src/elisp/treemacs-annotations.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-annotations.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-annotations" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-async" "treemacs/src/elisp/treemacs-async.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-async.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-async" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-bookmarks" "treemacs/src/elisp/treemacs-bookmarks.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-bookmarks.el

(autoload 'treemacs-bookmark "treemacs/src/elisp/treemacs-bookmarks" "\
Find a bookmark in treemacs.
Only bookmarks marking either a file or a directory are offered for selection.
Treemacs will try to find and focus the given bookmark's location, in a similar
fashion to `treemacs-find-file'.

With a prefix argument ARG treemacs will also open the bookmarked location.

\(fn &optional ARG)" t nil)

(autoload 'treemacs--bookmark-handler "treemacs/src/elisp/treemacs-bookmarks" "\
Open Treemacs into a bookmark RECORD.

\(fn RECORD)" nil nil)

(autoload 'treemacs-add-bookmark "treemacs/src/elisp/treemacs-bookmarks" "\
Add the current node to Emacs' list of bookmarks.
For file and directory nodes their absolute path is saved.  Tag nodes
additionally also save the tag's position.  A tag can only be bookmarked if the
treemacs node is pointing to a valid buffer position." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-bookmarks" '("treemacs--")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-compatibility"
;;;;;;  "treemacs/src/elisp/treemacs-compatibility.el" (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-compatibility.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-compatibility" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-core-utils" "treemacs/src/elisp/treemacs-core-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-core-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-core-utils" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-customization"
;;;;;;  "treemacs/src/elisp/treemacs-customization.el" (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-customization.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-customization" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-diagnostics" "treemacs/src/elisp/treemacs-diagnostics.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-diagnostics.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-diagnostics" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-dom" "treemacs/src/elisp/treemacs-dom.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-dom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-dom" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-extensions" "treemacs/src/elisp/treemacs-extensions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-extensions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-extensions" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-file-management"
;;;;;;  "treemacs/src/elisp/treemacs-file-management.el" (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-file-management.el

(autoload 'treemacs-delete-file "treemacs/src/elisp/treemacs-file-management" "\
Delete node at point.
A delete action must always be confirmed.  Directories are deleted recursively.
By default files are deleted by moving them to the trash.  With a prefix ARG
they will instead be wiped irreversibly.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-delete-marked-files "treemacs/src/elisp/treemacs-file-management" "\
Delete all marked files.

A delete action must always be confirmed.  Directories are deleted recursively.
By default files are deleted by moving them to the trash.  With a prefix ARG
they will instead be wiped irreversibly.

For marking files see `treemacs-bulk-file-actions'.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-move-file "treemacs/src/elisp/treemacs-file-management" "\
Move file (or directory) at point.

If the selected target is an existing directory the source file will be directly
moved into this directory.  If the given target instead does not exist then it
will be treated as the moved file's new name, meaning the original source file
will be both moved and renamed." t nil)

(autoload 'treemacs-copy-file "treemacs/src/elisp/treemacs-file-management" "\
Copy file (or directory) at point.

If the selected target is an existing directory the source file will be directly
copied into this directory.  If the given target instead does not exist then it
will be treated as the copied file's new name, meaning the original source file
will be both copied and renamed." t nil)

(autoload 'treemacs-move-marked-files "treemacs/src/elisp/treemacs-file-management" "\
Move all marked files.

For marking files see `treemacs-bulk-file-actions'." t nil)

(autoload 'treemacs-copy-marked-files "treemacs/src/elisp/treemacs-file-management" "\
Copy all marked files.

For marking files see `treemacs-bulk-file-actions'." t nil)

(autoload 'treemacs-rename-file "treemacs/src/elisp/treemacs-file-management" "\
Rename the file/directory at point.

Buffers visiting the renamed file or visiting a file inside the renamed
directory and windows showing them will be reloaded.  The list of recent files
will likewise be updated." t nil)

(autoload 'treemacs-show-marked-files "treemacs/src/elisp/treemacs-file-management" "\
Print a list of all files marked by treemacs." t nil)

(autoload 'treemacs-mark-or-unmark-path-at-point "treemacs/src/elisp/treemacs-file-management" "\
Mark or unmark the absolute path of the node at point." t nil)

(autoload 'treemacs-reset-marks "treemacs/src/elisp/treemacs-file-management" "\
Unmark all previously marked files in the current buffer." t nil)

(autoload 'treemacs-delete-marked-paths "treemacs/src/elisp/treemacs-file-management" "\
Delete all previously marked files." t nil)

(autoload 'treemacs-bulk-file-actions "treemacs/src/elisp/treemacs-file-management" "\
Activate the bulk file actions hydra.
This interface allows to quickly (unmark) files, so as to copy, move or delete
them in bulk.

Note that marking files is *permanent*, files will stay marked until they are
either manually unmarked or deleted.  You can show a list of all currently
marked files with `treemacs-show-marked-files' or `s' in the hydra." t nil)

(autoload 'treemacs-create-file "treemacs/src/elisp/treemacs-file-management" "\
Create a new file.
Enter first the directory to create the new file in, then the new file's name.
The pre-selection for what directory to create in is based on the \"nearest\"
path to point - the containing directory for tags and files or the directory
itself, using $HOME when there is no path at or near point to grab." t nil)

(autoload 'treemacs-create-dir "treemacs/src/elisp/treemacs-file-management" "\
Create a new directory.
Enter first the directory to create the new dir in, then the new dir's name.
The pre-selection for what directory to create in is based on the \"nearest\"
path to point - the containing directory for tags and files or the directory
itself, using $HOME when there is no path at or near point to grab." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-file-management" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-filewatch-mode"
;;;;;;  "treemacs/src/elisp/treemacs-filewatch-mode.el" (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-filewatch-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-filewatch-mode" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-follow-mode" "treemacs/src/elisp/treemacs-follow-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-follow-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-follow-mode" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-fringe-indicator"
;;;;;;  "treemacs/src/elisp/treemacs-fringe-indicator.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-fringe-indicator.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-fringe-indicator" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-git-commit-diff-mode"
;;;;;;  "treemacs/src/elisp/treemacs-git-commit-diff-mode.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-git-commit-diff-mode.el

(defvar treemacs-git-commit-diff-mode nil "\
Non-nil if Treemacs-Git-Commit-Diff mode is enabled.
See the `treemacs-git-commit-diff-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `treemacs-git-commit-diff-mode'.")

(custom-autoload 'treemacs-git-commit-diff-mode "treemacs/src/elisp/treemacs-git-commit-diff-mode" nil)

(autoload 'treemacs-git-commit-diff-mode "treemacs/src/elisp/treemacs-git-commit-diff-mode" "\
Minor mode to display commit differences for your git-tracked projects.

If called interactively, enable Treemacs-Git-Commit-Diff mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

When enabled treemacs will add an annotation next to every git project showing
how many commits ahead or behind your current branch is compared to its remote
counterpart.

The difference will be shown using the format `↑x ↓y', where `x' and `y' are the
numbers of commits a project is ahead or behind.  The numbers are determined
based on the output of `git status -sb'.

By default the annotation is only updated when manually updating a project with
`treemacs-refresh'.  You can install `treemacs-magit' to enable automatic
updates whenever you commit/fetch/rebase etc. in magit.

Does not require `treemacs-git-mode' to be active.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-git-commit-diff-mode" '("treemacs--")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-header-line" "treemacs/src/elisp/treemacs-header-line.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-header-line.el

(defvar treemacs-indicate-top-scroll-mode nil "\
Non-nil if Treemacs-Indicate-Top-Scroll mode is enabled.
See the `treemacs-indicate-top-scroll-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `treemacs-indicate-top-scroll-mode'.")

(custom-autoload 'treemacs-indicate-top-scroll-mode "treemacs/src/elisp/treemacs-header-line" nil)

(autoload 'treemacs-indicate-top-scroll-mode "treemacs/src/elisp/treemacs-header-line" "\
Minor mode which shows whether treemacs is scrolled all the way to the top.

If called interactively, enable Treemacs-Indicate-Top-Scroll mode
if ARG is positive, and disable it if ARG is zero or negative.
If called from Lisp, also enable the mode if ARG is omitted or
nil, and toggle it if ARG is `toggle'; disable the mode
otherwise.

When this mode is enabled the header line of the treemacs window will display
whether the window's first line is visible or not.

The strings used for the display are determined by
`treemacs-header-scroll-indicators'.

This mode makes use of `treemacs-user-header-line-format' - and thus
`header-line-format' - and is therefore incompatible with other modifications to
these options.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-header-line" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-hydras" "treemacs/src/elisp/treemacs-hydras.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-hydras.el

(autoload 'treemacs-common-helpful-hydra "treemacs/src/elisp/treemacs-hydras" "\
Summon a helpful hydra to show you the treemacs keymap.

This hydra will show the most commonly used keybinds for treemacs.  For the more
advanced (probably rarely used keybinds) see `treemacs-advanced-helpful-hydra'.

The keybinds shown in this hydra are not static, but reflect the actual
keybindings currently in use (including evil mode).  If the hydra is unable to
find the key a command is bound to it will show a blank instead." t nil)

(autoload 'treemacs-advanced-helpful-hydra "treemacs/src/elisp/treemacs-hydras" "\
Summon a helpful hydra to show you the treemacs keymap.

This hydra will show the more advanced (rarely used) keybinds for treemacs.  For
the more commonly used keybinds see `treemacs-common-helpful-hydra'.

The keybinds shown in this hydra are not static, but reflect the actual
keybindings currently in use (including evil mode).  If the hydra is unable to
find the key a command is bound to it will show a blank instead." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-hydras" '("treemacs-helpful-hydra")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-icons" "treemacs/src/elisp/treemacs-icons.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-icons.el

(autoload 'treemacs-resize-icons "treemacs/src/elisp/treemacs-icons" "\
Resize the current theme's icons to the given SIZE.

If SIZE is \\='nil' the icons are not resized and will retain their default size
of 22 pixels.

There is only one size, the icons are square and the aspect ratio will be
preserved when resizing them therefore width and height are the same.

Resizing the icons only works if Emacs was built with ImageMagick support, or if
using Emacs >= 27.1,which has native image resizing support.  If this is not the
case this function will not have any effect.

Custom icons are not taken into account, only the size of treemacs' own icons
png are changed.

\(fn SIZE)" t nil)

(autoload 'treemacs-define-custom-icon "treemacs/src/elisp/treemacs-icons" "\
Define a custom ICON for the current theme to use for FILE-EXTENSIONS.

Note that treemacs has a very loose definition of what constitutes a file
extension - it's either everything past the last period, or just the file's full
name if there is no period.  This makes it possible to match file names like
'.gitignore' and 'Makefile'.

Additionally FILE-EXTENSIONS are also not case sensitive and will be stored in a
down-cased state.

\(fn ICON &rest FILE-EXTENSIONS)" nil nil)

(autoload 'treemacs-define-custom-image-icon "treemacs/src/elisp/treemacs-icons" "\
Same as `treemacs-define-custom-icon' but for image icons instead of strings.
FILE is the path to an icon image (and not the actual icon string).
FILE-EXTENSIONS are all the (not case-sensitive) file extensions the icon
should be used for.

\(fn FILE &rest FILE-EXTENSIONS)" nil nil)

(autoload 'treemacs-map-icons-with-auto-mode-alist "treemacs/src/elisp/treemacs-icons" "\
Remaps icons for EXTENSIONS according to `auto-mode-alist'.
EXTENSIONS should be a list of file extensions such that they match the regex
stored in `auto-mode-alist', for example \\='(\".cc\").
MODE-ICON-ALIST is an alist that maps which mode from `auto-mode-alist' should
be assigned which treemacs icon, for example
`((c-mode . ,(treemacs-get-icon-value \"c\"))
  (c++-mode . ,(treemacs-get-icon-value \"cpp\")))

\(fn EXTENSIONS MODE-ICON-ALIST)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-icons" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-interface" "treemacs/src/elisp/treemacs-interface.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-interface.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-interface" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-logging" "treemacs/src/elisp/treemacs-logging.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-logging.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-logging" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-macros" "treemacs/src/elisp/treemacs-macros.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-macros.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-macros" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-mode" "treemacs/src/elisp/treemacs-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-mode.el

(autoload 'treemacs-mode "treemacs/src/elisp/treemacs-mode" "\
A major mode for displaying the file system in a tree layout.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-mode" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-mouse-interface"
;;;;;;  "treemacs/src/elisp/treemacs-mouse-interface.el" (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-mouse-interface.el

(autoload 'treemacs-leftclick-action "treemacs/src/elisp/treemacs-mouse-interface" "\
Move focus to the clicked line.
Must be bound to a mouse click, or EVENT will not be supplied.

\(fn EVENT)" t nil)

(autoload 'treemacs-doubleclick-action "treemacs/src/elisp/treemacs-mouse-interface" "\
Run the appropriate double-click action for the current node.
In the default configuration this means to expand/collapse directories and open
files and tags in the most recently used window.

This function's exact configuration is stored in
`treemacs-doubleclick-actions-config'.

Must be bound to a mouse double click to properly handle a click EVENT.

\(fn EVENT)" t nil)

(autoload 'treemacs-single-click-expand-action "treemacs/src/elisp/treemacs-mouse-interface" "\
A modified single-leftclick action that expands the clicked nodes.
Can be bound to <mouse1> if you prefer to expand nodes with a single click
instead of a double click.  Either way it must be bound to a mouse click, or
EVENT will not be supplied.

Clicking on icons will expand a file's tags, just like
`treemacs-leftclick-action'.

\(fn EVENT)" t nil)

(autoload 'treemacs-dragleftclick-action "treemacs/src/elisp/treemacs-mouse-interface" "\
Drag a file/dir node to be opened in a window.
Must be bound to a mouse click, or EVENT will not be supplied.

\(fn EVENT)" t nil)

(autoload 'treemacs-define-doubleclick-action "treemacs/src/elisp/treemacs-mouse-interface" "\
Define the behaviour of `treemacs-doubleclick-action'.
Determines that a button with a given STATE should lead to the execution of
ACTION.

The list of possible states can be found in `treemacs-valid-button-states'.
ACTION should be one of the `treemacs-visit-node-*' commands.

\(fn STATE ACTION)" nil nil)

(autoload 'treemacs-node-buffer-and-position "treemacs/src/elisp/treemacs-mouse-interface" "\
Return source buffer or list of buffer and position for the current node.
This information can be used for future display.  Stay in the selected window
and ignore any prefix argument.

\(fn &optional _)" t nil)

(autoload 'treemacs-rightclick-menu "treemacs/src/elisp/treemacs-mouse-interface" "\
Show a contextual right click menu based on click EVENT.

\(fn EVENT)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-mouse-interface" '("treemacs--")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-peek-mode" "treemacs/src/elisp/treemacs-peek-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-peek-mode.el

(defvar treemacs-peek-mode nil "\
Non-nil if Treemacs-Peek mode is enabled.
See the `treemacs-peek-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `treemacs-peek-mode'.")

(custom-autoload 'treemacs-peek-mode "treemacs/src/elisp/treemacs-peek-mode" nil)

(autoload 'treemacs-peek-mode "treemacs/src/elisp/treemacs-peek-mode" "\
Minor mode that allows you to peek at buffers before deciding to open them.

If called interactively, enable Treemacs-Peek mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

While the mode is active treemacs will automatically display the file at point,
without leaving the treemacs window.

Peeking will stop when you leave the treemacs window, be it through a command
like `treemacs-RET-action' or some other window selection change.

Files' buffers that have been opened for peeking will be cleaned up if they did
not exist before peeking started.

The peeked window can be scrolled using
`treemacs-next/previous-line-other-window' and
`treemacs-next/previous-page-other-window'

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-peek-mode" '("treemacs--")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-persistence" "treemacs/src/elisp/treemacs-persistence.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-persistence.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-persistence" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-project-follow-mode"
;;;;;;  "treemacs/src/elisp/treemacs-project-follow-mode.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-project-follow-mode.el

(defvar treemacs-project-follow-mode nil "\
Non-nil if Treemacs-Project-Follow mode is enabled.
See the `treemacs-project-follow-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `treemacs-project-follow-mode'.")

(custom-autoload 'treemacs-project-follow-mode "treemacs/src/elisp/treemacs-project-follow-mode" nil)

(autoload 'treemacs-project-follow-mode "treemacs/src/elisp/treemacs-project-follow-mode" "\
Toggle `treemacs-only-current-project-mode'.

If called interactively, enable Treemacs-Project-Follow mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

This is a minor mode meant for those who do not care about treemacs' workspace
features, or its preference to work with multiple projects simultaneously.  When
enabled it will function as an automated version of
`treemacs-display-current-project-exclusively', making sure that, after a small
idle delay, the current project, and *only* the current project, is displayed in
treemacs.

The project detection is based on the current buffer, and will try to determine
the project using the following methods, in the order they are listed:

- the current projectile.el project, if `treemacs-projectile' is installed
- the current project.el project
- the current `default-directory'

The update will only happen when treemacs is in the foreground, meaning a
treemacs window must exist in the current scope.

This mode requires at least Emacs version 27 since it relies on
`window-buffer-change-functions' and `window-selection-change-functions'.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-project-follow-mode" '("treemacs--")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-rendering" "treemacs/src/elisp/treemacs-rendering.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-rendering.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-rendering" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-scope" "treemacs/src/elisp/treemacs-scope.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-scope.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-scope" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-tag-follow-mode"
;;;;;;  "treemacs/src/elisp/treemacs-tag-follow-mode.el" (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-tag-follow-mode.el

(autoload 'treemacs--flatten&sort-imenu-index "treemacs/src/elisp/treemacs-tag-follow-mode" "\
Flatten current file's imenu index and sort it by tag position.
The tags are sorted into the order in which they appear, regardless of section
or nesting depth." nil nil)

(defvar treemacs-tag-follow-mode nil "\
Non-nil if Treemacs-Tag-Follow mode is enabled.
See the `treemacs-tag-follow-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `treemacs-tag-follow-mode'.")

(custom-autoload 'treemacs-tag-follow-mode "treemacs/src/elisp/treemacs-tag-follow-mode" nil)

(autoload 'treemacs-tag-follow-mode "treemacs/src/elisp/treemacs-tag-follow-mode" "\
Toggle `treemacs-tag-follow-mode'.

If called interactively, enable Treemacs-Tag-Follow mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

This acts as more fine-grained alternative to `treemacs-follow-mode' and will
thus disable `treemacs-follow-mode' on activation.  When enabled treemacs will
focus not only the file of the current buffer, but also the tag at point.

The follow action is attached to Emacs' idle timer and will run
`treemacs-tag-follow-delay' seconds of idle time.  The delay value is not an
integer, meaning it accepts floating point values like 1.5.

Every time a tag is followed a re--scan of the imenu index is forced by
temporarily setting `imenu-auto-rescan' to t (though a cache is applied as long
as the buffer is unmodified).  This is necessary to assure that creation or
deletion of tags does not lead to errors and guarantees an always up-to-date tag
view.

Note that in order to move to a tag in treemacs the treemacs buffer's window
needs to be temporarily selected, which will reset blink-cursor-mode's timer if
it is enabled.  This will result in the cursor blinking seemingly pausing for a
short time and giving the appearance of the tag follow action lasting much
longer than it really does.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-tag-follow-mode" '("treemacs--")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-tags" "treemacs/src/elisp/treemacs-tags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-tags.el

(autoload 'treemacs--expand-file-node "treemacs/src/elisp/treemacs-tags" "\
Open tag items for file BTN.
Recursively open all tags below BTN when RECURSIVE is non-nil.

\(fn BTN &optional RECURSIVE)" nil nil)

(autoload 'treemacs--collapse-file-node "treemacs/src/elisp/treemacs-tags" "\
Close node given by BTN.
Remove all open tag entries under BTN when RECURSIVE.

\(fn BTN &optional RECURSIVE)" nil nil)

(autoload 'treemacs--visit-or-expand/collapse-tag-node "treemacs/src/elisp/treemacs-tags" "\
Visit tag section BTN if possible, expand or collapse it otherwise.
Pass prefix ARG on to either visit or toggle action.

FIND-WINDOW is a special provision depending on this function's invocation
context and decides whether to find the window to display in (if the tag is
visited instead of the node being expanded).

On the one hand it can be called based on `treemacs-RET-actions-config' (or
TAB).  The functions in these configs are expected to find the windows they need
to display in themselves, so FIND-WINDOW must be t. On the other hand this
function is also called from the top level vist-node functions like
`treemacs-visit-node-vertical-split' which delegates to the
`treemacs--execute-button-action' macro which includes the determination of
the display window.

\(fn BTN ARG FIND-WINDOW)" nil nil)

(autoload 'treemacs--expand-tag-node "treemacs/src/elisp/treemacs-tags" "\
Open tags node items for BTN.
Open all tag section under BTN when call is RECURSIVE.

\(fn BTN &optional RECURSIVE)" nil nil)

(autoload 'treemacs--collapse-tag-node "treemacs/src/elisp/treemacs-tags" "\
Close tags node at BTN.
Remove all open tag entries under BTN when RECURSIVE.

\(fn BTN &optional RECURSIVE)" nil nil)

(autoload 'treemacs--goto-tag "treemacs/src/elisp/treemacs-tags" "\
Go to the tag at BTN.

\(fn BTN)" nil nil)

(autoload 'treemacs--create-imenu-index-function "treemacs/src/elisp/treemacs-tags" "\
The `imenu-create-index-function' for treemacs buffers." nil nil)

(function-put 'treemacs--create-imenu-index-function 'side-effect-free 't)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-tags" '("treemacs--")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-themes" "treemacs/src/elisp/treemacs-themes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-themes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-themes" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-treelib" "treemacs/src/elisp/treemacs-treelib.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-treelib.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-treelib" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-visuals" "treemacs/src/elisp/treemacs-visuals.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-visuals.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-visuals" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs/src/elisp/treemacs-workspaces" "treemacs/src/elisp/treemacs-workspaces.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from treemacs/src/elisp/treemacs-workspaces.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs/src/elisp/treemacs-workspaces" '("treemacs-")))

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

;;;### (autoloads nil nil ("avy/avy-test.el" "dash/dash-functional.el"
;;;;;;  "el-get/el-get-install.el" "f/f-shortdoc.el" "lsp-mode/clients/lsp-cmake.el"
;;;;;;  "lsp-mode/clients/lsp-d.el" "lsp-mode/clients/lsp-dhall.el"
;;;;;;  "lsp-mode/lsp.el" "rainbow-mode/rainbow-mode-autoloads.el"
;;;;;;  "rainbow-mode/rainbow-mode-pkg.el" "scala-mode/scala-mode-prettify-symbols.el"
;;;;;;  "treemacs/src/elisp/treemacs-faces.el") (0 0 0 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
