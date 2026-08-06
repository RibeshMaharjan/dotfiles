function pcd --wraps='PGPASSWORD=dbuser123 psql -h 139.59.42.220 -p 5432 -U developer -d dev_codniv_app' --wraps='PGPASSWORD=dbuser123 psql -h 139.59.42.220 -p 5432 -U developer -d dev_codniv_app_v3' --wraps='PGPASSWORD=dbuser123 psql -h 143.244.130.45 -p 5432 -U developer -d dev_codniv_app' --description 'alias pcd=PGPASSWORD=dbuser123 psql -h 143.244.130.45 -p 5432 -U developer -d dev_codniv_app'
    PGPASSWORD=dbuser123 psql -h 143.244.130.45 -p 5432 -U developer -d dev_codniv_app $argv
end
