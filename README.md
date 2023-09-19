# Sql database desgins patterns and queries

## Pre-requisites
__Docker or XAMPP__

- Docker
> link to download: https://docs.docker.com/get-docker/
1. If you have docker run the followed command to start a container with mysql and phpmyadmin:
   
```bash
docker compose up -d
```

navigate to http://localhost:8090/
> username: root
> 
> password: password


- XAMPP 
  
> Link to download: https://www.apachefriends.org/download.html

After downloading and installing XAMPP, open the XAMPP control panel and start the Apache and MySQL modules.
<div align="center">
<img src="./Screenshot%202023-07-17%20at%2015.10.01.png" width="400px">
</div>

Go to [phpMyAdmin](http://localhost/phpmyadmin/sql.php)

<img src="./Screenshot%202023-07-17%20at%2015.20.24.png">

## Usage

Each folder in this project is a database with its own design, and a file with its name to create the database in sql Language.

i.e -> ``culdampolla.sql`` is the file to create the database ``culdampolla``

Copy the whole content of the file and paste it in the SQL tab in phpMyAdmin.
This will create the database with its tables and relations.

After creating you can execute the necessary queries to test the database.

