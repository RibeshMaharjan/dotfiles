function phdb --wraps=psql\ -h\ localhost\ -p\ 5433\ -U\ postgres\ -d\ phmis_dev\n\n\n\n\n --wraps='psql -h localhost -p 5433 -U postgres -d phmis_dev' --wraps='PGPASSWORD=postgres psql -h localhost -p 5433 -U postgres -d phmis_dev' --description 'alias phdb=PGPASSWORD=postgres psql -h localhost -p 5433 -U postgres -d phmis_dev'
    PGPASSWORD=postgres psql -h localhost -p 5433 -U postgres -d phmis_dev $argv
end
