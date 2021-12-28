

elastic-webapp-build:
	docker-compose -f docker-compose-elastic.yml build webapp
elastic-up: elastic-webapp-build
	docker-compose -f docker-compose-elastic.yml up
elastic-down:
	docker-compose -f docker-compose-elastic.yml down

m3-webapp-build: 
	docker-compose -f docker-compose-flask.yml build webapp
m3-up: m3-webapp-build
	docker-compose -f docker-compose-flask.yml up
m3-down:
	docker-compose -f docker-compose-flask.yml down

m3-gunicorn-webapp-build:
	docker-compose build webapp
m3-gunicorn-webapp-up:
	docker-compose up webapp
m3-gunicorn-up: m3-gunicorn-webapp-build
	docker-compose up
m3-gunicorn-down:
	docker-compose down
