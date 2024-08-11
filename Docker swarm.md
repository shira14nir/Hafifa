### A Brief Overview

Docker Swarm is a container orchestration tool that comes built into Docker. It allows you to manage a cluster of Docker engines as a single virtual Docker engine. This means you can deploy and manage containers across multiple machines seamlessly. Swarm handles load balancing, scaling, and ensures high availability of your services.

### cute comparison between Docker Swarm and Kubernetes

Both Docker Swarm and Kubernetes have their strengths and are suitable for different use cases. Docker Swarm is often favored for simpler deployments or when ease of use is a priority, while Kubernetes is preferred for more complex and scalable environments where advanced features are needed.

### deploy mongo db
`docker swarm init`
`docker network create --driver overlay mongo-network`
`docker stack deploy -c docker-compose.yml mongo-stack`
Verify the Deployment:
`docker ps`
`docker stack services mongo-stack`