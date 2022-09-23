
**What this is**

This folder contains required files for deploying a Hydrogen based storefront on EC2.

**Pre-requisites**

* Working installations of docker. Follow this guide to install Docker on Ubuntu https://docs.docker.com/engine/install/ubuntu/.
* Valid `Dockerfile` which can generate a build. Refer to `Dockerfile` in the folder.
* Use`ngnix.conf` 



# Docker Related Command


* View Docker Logs for a container
  ```
sudo  docker logs --follow <container_id>
  ```


* Run the Docker container

  ```
sudo docker run --restart unless-stopped -e ENV_VAR_NAME=ENV_VAR_VALUE -p 8080:8080 -d --name <container_name> <image_name>

  ```

* Log into docker container

  ```
sudo docker exec -it <container_id> bash
```