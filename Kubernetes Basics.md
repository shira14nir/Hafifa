1. What is the difference between a secret and a configmap? When will we use a secret and when a configmap? 
   Secrets are used to manage sensitive data like passwords and API keys, ensuring it is encoded and kept secure. ConfigMaps are for non-sensitive configuration data that applications need, such as environment variables or configuration files.
   
2. What is the difference between a service and an ingress? 
   A Service in Kubernetes exposes a set of Pods as a network service within the cluster, providing stable IP addresses and load balancing. An Ingress manages external access to services, typically via HTTP or HTTPS, by providing routing rules and host-based or path-based routing.
   
3. When will we use a service and when an ingress? What are different types of services?
   The main types of Kubernetes Services are ClusterIP (default, internal access), NodePort (external access via node IP and port), LoadBalancer (external access via a cloud provider’s load balancer), and Headless (no cluster IP, used for direct Pod communication).