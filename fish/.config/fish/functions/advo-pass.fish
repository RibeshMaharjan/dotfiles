function advo-pass --wraps='cat ~/.secrets/advotect-prod-pass | wl-copy' --description 'alias advo-pass=cat ~/.secrets/advotect-prod-pass | wl-copy'
    cat ~/.secrets/advotect-prod-pass | wl-copy $argv
end
