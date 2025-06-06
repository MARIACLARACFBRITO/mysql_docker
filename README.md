# airflow_docker

Setup Instructions
Follow the steps below to ensure everything works as expected:

# 1. Clone the Repository
Open your terminal and run the command below to clone the repository:

```bash
git clone https://github.com/MARIACLARACFBRITO/mysql_docker.git
```


# 2. Navigate to the Repository Directory
Enter the folder of the cloned repository:
```
cd mysql_docker

```

**Build the Docker containers:**

*IMPORTANT:* Before using docker commands certify docker desktop is open on device.

   ```bash
   docker-compose build
   ```
Start the containers in the background:

```
docker-compose up -d
```

Only necessary if you need to use airflow on your application. Otherwise, go to the next topic.

Access the application in the browser:

URL: http://localhost:8080

Login: airflow

Senha: airflow

Activate the DAG and click play to run it.

Access MySQL inside the container:

Verify the container names through:

```
docker ps
```
Copy the mysql CONTAINER ID. And then paste the content on <nome_do_container> of the next command.
 
```
docker exec -it <nome_do_container> bash
```

And then:
```
mysql -u root -p
```

Enter the password: secret (you can change it on docker-compose)

Done. You be connected to the MySQL through Docker.

Before CRUD you need to create a DATABASE.

```
CREATE DATABASE <name_desired> ;
```

Select the database you want to use:

```
USE <database_already_created> ;
```
Now you are ready to CRUD.

CREATE:
```
CREATE TABLE fornecedores (codigo INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(255) NOT NULL, email VARCHAR(255));
```

 Now let's fill the table:

```
INSERT INTO fornecedores (nome, email) VALUES ('MALIA', 'MALIA@GMAIL.COM');
```

Now, let's read the data we've just inserted:
READ:
```
SELECT * FROM fornecedores;
```

UPDATE:
```
UPDATE fornecedores SET email='malia123@gmail.com' where nome='MALIA';
```
You can see the changes made through the SELECT command already mentioned before.

DELETE:

```
DELETE FROM fornecedores CASCADE;
```
cascade is use to guarantee that all references of the table be droped with it.

### Tips:
Replace <container_name> with the actual name of your container.
Make sure that docker-compose is installed and configured correctly before running the commands.
