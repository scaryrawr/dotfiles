status is-interactive && ! test "$TERM_PROGRAM" = "vscode"  && not set -q TMUX && exec tmux
