function fish_prompt
  set tilde ~
  set -l dir (string replace -r '^'"$tilde"'($|/)' '~$1' $PWD)

  set_color fff
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
