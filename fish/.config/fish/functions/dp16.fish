function dp16 --wraps='docker exec -it psql -U postgres' --wraps='docker exec -it pg16 psql -U postgres' --description 'alias dp16=docker exec -it pg16 psql -U postgres'
    docker exec -it pg16 psql -U postgres $argv
end
