DEFAULT_HTTP_PROXY="http://127.0.0.1:7880"
DEFAULT_HTTPS_PROXY="https://127.0.0.1:7880"
DEFAULT_SOCKS5_PROXY="socks5://127.0.0.1:7881"
set_proxy_git(){
    git config --global http.proxy $DEFAULT_SOCKS5_PROXY
    git config --global https.proxy $DEFAULT_SOCKS5_PROXY
}

unset_proxy_git(){
    git config --global http.proxy ""
    git config --global https.proxy ""
}

enable_all_proxy(){
    set_proxy_git
    export ALL_PROXY=$DEFAULT_HTTP_PROXY
}

disable_all_proxy(){
    unset ALL_PROXY
    unset_proxy_git
}
