function set_proxy
    set -gx http_proxy $argv
    set -gx https_proxy $http_proxy
    set -gx all_proxy $http_proxy
end
