function dpc --wraps='docker exec -it pg12 psql -U postgres -d docker_codniv_app_v2' --wraps='docker exec -it pg12 psql -U postgres -d codniv_app_migrate_uuid_v2' --description 'alias dpc=docker exec -it pg12 psql -U postgres -d codniv_app_migrate_uuid_v2'
    docker exec -it pg12 psql -U postgres -d codniv_app_migrate_uuid_v2 $argv
end
