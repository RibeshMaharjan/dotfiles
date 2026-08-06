function prod-dev-pass --wraps='cat ~/.secrets/prod-dev-pass | wl-copy' --description 'alias prod-dev-pass=cat ~/.secrets/prod-dev-pass | wl-copy'
    cat ~/.secrets/prod-dev-pass | wl-copy $argv
end
