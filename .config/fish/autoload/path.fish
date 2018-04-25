set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/sbin $PATH

if test -d ~/.cask/bin
    set -x PATH ~/.cask/bin $PATH
end

# macOS
# if test (uname) = "Darwin"
#     set -x PATH /usr/local/opt/openssl/bin $PATH
# end

