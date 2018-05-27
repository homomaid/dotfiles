function emacs; emacsclient -nw -a "" $argv 2> /dev/null; end
function ekill; emacsclient -e "(kill-emacs)"; end
