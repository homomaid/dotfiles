# Basic Settings
set fish_term24bit 1

# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'

set ___fish_git_prompt_color_branch ""
set ___fish_git_prompt_color_branch_detached ""
set ___fish_git_prompt_color_branch_detached_done ""
set ___fish_git_prompt_color_branch_done ""

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡︎'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
set ___fish_git_prompt_char_upstream_equal ''

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-ocean.sh
end

# emacs
if test $USER != "root"
   function emacs; emacsclient -nw -a "" $argv 2> /dev/null; end
   function ekill; emacsclient -e "(kill-emacs)"; end
end

# env
if type rbenv>/dev/null 2>&1
   status --is-interactive; and source (rbenv init -|psub)
end

if type pyenv>/dev/null 2>&1
   status --is-interactive; and source (pyenv init -|psub)
end
