function fish_prompt
  # test $SSH_TTY; and printf (set_color red)(whoami)(set_color white)'@'(set_color yellow)(hostname)' '
  # test $USER = 'root'; and echo (set_color red)"#"
  # Main
  # echo -n (set_color cyan)(prompt_pwd) (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '

  set tilde ~
  set -l dir (string replace -r '^'"$tilde"'($|/)' '~$1' $PWD)

  echo
  echo -n (set_color -b c73) (hostname -s) ""
  echo -n (set_color -b 895) (basename $dir) ""
  echo -n (set_color -b 458)(__fish_git_prompt " ")
  if test $USER = "root"
    echo -n (set_color -b b36) "#" ""
  else
    echo -n (set_color -b 7e80e9) "\$" ""
  end
  echo -n (set_color -b normal)" "
end
