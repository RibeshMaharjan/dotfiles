function pc --wraps='psql -h localhost -p 5432 -U postgres' --wraps='psql -h localhost -p 5432 -U postgres -d local_codniv_app_v5' --wraps='psql -h localhost -p 5432 -U postgres -d local_codniv_app_v4' --description 'alias pc=psql -h localhost -p 5432 -U postgres -d local_codniv_app_v4'
    psql -h localhost -p 5432 -U postgres -d local_codniv_app_v4 $argv
end
