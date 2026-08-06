function git-pass --wraps='cat ~/.secrets/github-server-token | wl-copy' --description 'alias git-pass=cat ~/.secrets/github-server-token | wl-copy'
    cat ~/.secrets/github-server-token | wl-copy $argv
end
