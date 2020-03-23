# Apache Nifi

Apache NiFi is an easy to use, powerful, and reliable system to process and distribute data.

## Features

Apache NiFi was made for dataflow. It supports highly configurable directed graphs of data routing, transformation, and system mediation logic. Some of its key features include:

1. Web-based user interface
	- Seamless experience for design, control, and monitoring
2. Highly configurable
	- Loss tolerant vs guaranteed delivery
	- Low latency vs high throughput
	- Dynamic prioritization
	- Flows can be modified at runtime
	- Back pressure
3. Data Provenance
	- Track dataflow from beginning to end
4. Designed for extension
	- Build your own processors and more
	- Enables rapid development and effective testing
5. Secure
	- SSL, SSH, HTTPS, encrypted content, etc...
	- Pluggable role-based authentication/authorization

## Persistence

Apache Nifi in dockerized environment was not peristent by default. So we as a team came up with a project to make Nifi store data in a persistent fashion. 

Pre-requisites:-
- docker and docker-compose should be installed
- git available on the server

Just follow the steps below to spin up the Nifi with persistent volumes on 

1. ssh to the server
2. sudo git clone https://github.com/Profirator/Profi-NiFi.git
3. cd to directory Profi-NiFi
4. sudo sh build.sh
4. sudo docker-compose up &

## WARNING
- DON'T perform "docker-compose down" as it will delete everything along with volumes, thereby removing your peristent data, that's what "docker-compose down" definition says:

```bash
down - Stop and remove containers, networks, images, and volumes
```
- So, in case machine turns off or container goes down, remove it or restart it, but don't turn it down
