build_docker:
	docker-compose up -d --build

delete_docker:
	docker stop $$(docker ps -aq)
	docker rm $$(docker ps -aq)
	docker images -q |xargs docker rmi
	docker system prune -f

list_docker:
	docker images && docker ps -a

exec_docker:
	docker exec -it test-lambda bash

logs_docker:
	docker logs test-lambda -f

reset_docker:
	make delete_docker
	make build_docker

test_docker:
	curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'