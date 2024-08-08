

1.       Which command is used to display the k8s cluster version.
   `kubectl version`

2.       Which command is used to display the k8s cluster itself.
   `kubectl cluster-info`

3.       Which command is used to display all the nodes in the cluster.
`kubectl get nodes`, `kubectl get pods --all-namespaces -o wide`

4.       Pick one node and perform the following actions in it:
`kubectl describe node minikube`

a.       Describe the selected node.
the control plane.

b.       Describe the selected node's used resources.
Allocated resources:
  (Total limits may be over 100 percent, i.e., overcommitted.)
  Resource           Requests    Limits
  --------           --------    ------
  cpu                850m (14%)  0 (0%)
  memory             370Mi (6%)  170Mi (2%)
  ephemeral-storage  0 (0%)      0 (0%)
  hugepages-1Gi      0 (0%)      0 (0%)
  hugepages-2Mi      0 (0%)      0 (0%)


5.       Which command is used to display all the resources in the cluster.
   `kubectl get all --all-namespaces`

6.       Create a namespace with your name – Which command did you used and which command is used for displaying all the namespaces in the cluster.
`kubectl create namespace shira`
namespace/shira created
`kubectl get ns`
shira             Active   49s

7.       Deploy ngnix (read briefly about ngnix and find out which port ngnix is running on) to the namespace you have just created.
   
   Nginx is a popular web server that can also function as a reverse proxy, load balancer, and HTTP cache. It is widely used for serving static content, handling high traffic loads, and managing proxy requests. By default, Nginx runs on port `80` for HTTP and port `443` for HTTPS.
   
   `kubectl apply -f nginx-deployment.yaml`
   deployment.apps/nginx created
`kubectl apply -f nginx-service.yaml`
service/nginx-service created
`kubectl get deployments -n shira`
NAME    READY   UP-TO-DATE   AVAILABLE   AGE
nginx   1/1     1            1           112s
`kubectl get services -n shira`
NAME            TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
nginx-service   LoadBalancer   10.109.236.94               80:32063/TCP   116s

8.       Deploy a secret with the fields hafifa=True and name={your_name} to the namespace you have just created.
   `kubectl apply -f my-secret.yaml`
   `kubectl get secret my-secret -n shira -o yaml`
   ` kubectl get secret my-secret -n shira -o jsonpath="{.data.hafifa}" | base64 --decode`
   True

9.       Deploy  a configmap with a list of three facts about you and your age to the namespace you have just created.
   `kubectl apply -f my-configmap.yaml`
   `kubectl describe configmap my-configmap -n shira`

10.  Display all the:

a.       Pods
`kubectl get pods --all-namespaces`

b.       Deployments
`kubectl get deployments --all-namespaces`

c.       Secrets
`kubectl get secrets --all-namespaces`

d.       Configmaps
`kubectl get configmaps --all-namespaces`

11.  Perform the following actions about the ngnix pod:

a.       Describe the pod
`kubectl describe pod nginx -n shira`

b.       Print all the pods event
`kubectl get events -n shira`

c.       Print the pod's YAML
` kubectl get pod nginx-576c6b7b6-78gls  -n shira -o yaml`

d.       Print the pod's node
`kubectl get pod nginx-576c6b7b6-78gls  -n shira -o jsonpath='{.spec.nodeName}'`

f.         Print the pod's logs and the updates live
`kubectl logs -f nginx-576c6b7b6-78gls -n shira`

g.        Execute /bin/bash inside the nodes container.
`kubectl exec -it nginx-576c6b7b6-78gls -n shira -- /bin/bash`
 ls
bin   dev                  docker-entrypoint.sh  home  lib64  mnt  proc  run   srv  tmp  var
boot  docker-entrypoint.d  etc                   lib   media  opt  root  sbin  sys  usr