function dpcm --wraps='docker exec -it pg12 psql -U postgres -d codniv_master_migrate_uuid_v2' --description 'alias dpcm=docker exec -it pg12 psql -U postgres -d codniv_master_migrate_uuid_v2'
    docker exec -it pg12 psql -U postgres -d codniv_master_migrate_uuid_v2 $argv
end
