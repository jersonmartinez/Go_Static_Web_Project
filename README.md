# Static Website Go

### Clone Project

```bash
git clone https://github.com/jersonmartinez/Go_Static_Web_Project.git
cd Go_Static_Web_Project
```

### Run Project with Docker

```bash
docker-compose up -d

[+] Running 2/2
 ✔ Network go_static_web_project_default  Created                                                                                                      0.0s
 ✔ Container go_static_web_project-app-1  Started
```

```bash
docker ps

CONTAINER ID   IMAGE                       COMMAND              CREATED         STATUS         PORTS                    NAMES
ff903f9e9939   go_static_web_project-app   "air -c .air.toml"   6 seconds ago   Up 5 seconds   0.0.0.0:8585->8585/tcp   go_static_web_project-app-1
```

Open [127.0.0.1:8585](http://127.0.0.1:8585)

![image](https://github.com/jersonmartinez/Go_Static_Web_Project/assets/7296281/773701fd-317f-41d7-aa01-89e690d14a5b)
