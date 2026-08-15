# Config
alias fishali='nvim ~/dotfiles/fish/.config/fish/conf.d/aliases.fish'

# Navigation
alias personal='cd ~/Projects/Personal'
alias codniv='cd ~/Projects/Work/Codniv'

# MailSense
alias msbe='cd ~/Projects/Personal/MailSense-be'
alias msfe='cd ~/Projects/Personal/mailsense-nextjs'

# Advotech
alias abe='cd ~/Projects/Work/Codniv/advotech-be'
alias afe='cd ~/Projects/Work/Codniv/advotech-fe-mono-repo'

# HRM
alias pbe='cd ~/Projects/Work/Codniv/hrm/codniv-app-be'
alias pfe='cd ~/Projects/Work/Codniv/hrm/codniv-app-dash'

# HRM Superadmin
alias psbe='cd ~/Projects/Work/Codniv/hrm-superadmin/codniv-hrm-superadmin-be'
alias psfe='cd ~/Projects/Work/Codniv/hrm-superadmin/codniv-hrm-superadmin-fe'

# PHMIS
alias phbe='cd ~/Projects/Work/Codniv/phmis/phmis-be'
alias phfe='cd ~/Projects/Work/Codniv/phmis/phmis-fe'

# Git
alias gs='git status'
alias gc='git checkout'
alias gt='git log --since="midnight" --author="$(git config user.name)" --oneline'

# Docker Postgres
alias pg12='docker exec -it pg12 psql -U asura'
alias pg16='docker exec -it pg16 psql -U asura'

# Secrets
alias advo-pass='copy-secret advotect-prod-pass'
alias git-pass='copy-secret github-server-token'
alias prod-dev-pass='copy-secret prod-dev-pass'
alias prod-token='copy-secret gitlab-codniv-prod'

# Daily updates
alias dupd='nvim ~/Projects/Work/Codniv/daily-updates.txt'
alias duc='copy < ~/Projects/Work/Codniv/daily-updates.txt'

# Misc
alias gen-uuid='cat /proc/sys/kernel/random/uuid'
alias ls='eza -al --color=always --group-directories-first --icons'
alias sn='shutdown now'
