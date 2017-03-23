run:
	docker-compose -d up
up1:
	docker-compose up -d db
up2:
	docker-compose up -d rc
up3:
	docker-compose up -d hb

k1:
	docker-compose stop db
	docker-compose rm -f db
k2:
	docker-compose stop rc
	docker-compose rm -f rc
k3:
	docker-compose stop hb
	docker-compose rm -f hb
t1: # Need to test API support
	curl -X POST http://localhost:3001/hubot/say -d message='Hello World' -d room='GENERAL' 
