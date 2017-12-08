function unset_proxy
    set -ge http_proxy
    set -ge https_proxy
    set -ge all_proxy
end
