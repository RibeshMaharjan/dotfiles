function pcdm --wraps='PGPASSWORD=dbuser123 psql -h 139.59.42.220 -p 5432 -U developer -d codniv_master_db' --description 'alias pcdm=PGPASSWORD=dbuser123 psql -h 139.59.42.220 -p 5432 -U developer -d codniv_master_db'
    PGPASSWORD=dbuser123 psql -h 139.59.42.220 -p 5432 -U developer -d codniv_master_db $argv
end
