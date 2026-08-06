function prod-token --wraps='cat ~/.secrets/gitlab-codniv-prod | wl-copy' --description 'alias prod-token=cat ~/.secrets/gitlab-codniv-prod | wl-copy'
    cat ~/.secrets/gitlab-codniv-prod | wl-copy $argv
end
