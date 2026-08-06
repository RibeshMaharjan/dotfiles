function ordb --wraps='docker exec -it pg12 psql -U postgres -d orderlyn' --wraps='docker exec -it pg12 psql -U postgres -d local_orderlyn2' --wraps='docker exec -it pg12 psql -U postgres -d orderlyn_orchestrator_be' --wraps='docker exec -it pg12 psql -U postgres -d postgres' --description 'alias ordb=docker exec -it pg12 psql -U postgres -d orderlyn_orchestrator_be'
    docker exec -it pg12 psql -U postgres -d orderlyn_orchestrator_be $argv
end
