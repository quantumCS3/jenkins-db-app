docker run -p 127.0.0.1:3306:3306  --name mariadb-jenkins -e MARIADB_ROOT_PASSWORD=Password123 -d mariadb:latest


docker run -p 127.0.0.1:3306:3306 --name my-mariadb -v ./setup.sql:/docker-entrypoint-initdb.d/init.sql -e MARIADB_ROOT_PASSWORD=Password123 -d mariadb:latest

docker exec -it my-mariadb mariadb --user root -pPassword123

