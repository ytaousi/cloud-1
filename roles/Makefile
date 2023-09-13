all:
	docker-compose -f /home/ytaousi/cloud-1/docker-compose.yml --env-file .env_variables up -d

fclean:
	@printf "cleanning docker environment\n"
	@docker stop $$(docker ps -qa)
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force
	rm -rf /home/ytaousi/cloud-1/data/wordpress/*
	rm -rf /home/ytaousi/cloud-1/data/mariadb/*
re:
	@printf "remaking looking for changes\n"
	docker-compose -f /home/ytaousi/cloud-1/docker-compose.yml --env-file .env_variables down
	docker-compose -f /home/ytaousi/cloud-1/docker-compose.yml --env-file .env_variables up -d --build