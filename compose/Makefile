clean:
	docker compose stop $(docker compose ps -q)
	docker compose rm $(docker compose ps -q)
	docker rmi -f compose_backend compose_prisma compose_frontend

up:
	docker compose up

start: 
	docker compose start database prisma backend frontend  

logs: 
	docker compose logs database prisma backend frontend -f  

backend-logs: 
	docker compose logs backend -f

ps:
	docker compose ps