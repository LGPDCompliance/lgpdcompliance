
# LGPD Compliance Database

This project was created to avoid problems running mysql database locally. 




## Docker Installation

- First, you need to install [docker](https://docs.docker.com/engine/install/ubuntu/) and [docker-compose](https://docs.docker.com/compose/install/)
- And then, you need to run the following commands: 

## Run Locally

Create a new directory for lgpd-Compliance

```bash
  mkdir lgpd-compliance
  cd lgpd-compliance
```

Clone all LGPD Compliance projects.
- compose
- backend
- frontend

Go to `frontend/lib/core/api.dart` and change api to development to developement mode.


Go to `compose` directory run the folowing command: 

```bash
  cd compose
  docker compose up
```

### Remove containers and reset database. 

1. Stop all containers pressing Ctrl+C 
2. Run the following command. 

```bash
  make clean
```

- Use credentials inside docker-compose file to connect with database. 

## Authors

- [@rafaelfigueredog](https://www.github.com/rafaelfigueredog)


## References

- [Setting Up a MySQL Database in Docker](https://betterprogramming.pub/setting-up-mysql-database-in-a-docker-d6c69a3e9afe)
- [How to Install MySQL on Ubuntu 20.04](https://phoenixnap.com/kb/install-mysql-ubuntu-20-04)
- [How to connect prisma with MySQL](https://youtu.be/CQcaeIhVB8c)
