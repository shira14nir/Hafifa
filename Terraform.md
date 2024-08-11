1. create main.tf
2. `terraform init`
   Terraform has been successfully initialized!
3. `terraform plan`
   Terraform will perform the following actions:
4. `terraform apply`
   Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
5. `kubectl get namespaces`
   shira-terraform2   Active   47s
	`kubectl get deployments -n shira-terraform2`
	nginx-deployment   2/2     2            2           66s
	`kubectl get services -n shira-terraform2`
	nginx-service   ClusterIP   10.103.103.216   <none>        80/TCP    89s
6. added ingress
`kubectl port-forward svc/nginx-service 8080:80 -n shira-terraform-nginx`
Forwarding from 127.0.0.1:8080 -> 80
Forwarding from [::1]:8080 -> 80
Handling connection for 8080
Handling connection for 8080
