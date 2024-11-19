docker run -p 127.0.0.1:3306:3306  --name mariadb-jenkins -e MARIADB_ROOT_PASSWORD=Password123 -d mariadb:latest


docker exec -it mariadb-jenkins mariadb --user root -pPassword123