function dp12 --wraps='docker exec -it pg12 psql -U postgres' --description 'alias dp12=docker exec -it pg12 psql -U postgres'
    docker exec -it pg12 psql -U postgres $argv
end
