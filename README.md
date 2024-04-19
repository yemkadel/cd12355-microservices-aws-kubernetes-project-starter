# Coworking Space Service Extension
The Coworking Space Service is a set of APIs that enables users to request one-time tokens and administrators to authorize access to a coworking space. This service follows a microservice pattern and the APIs are split into distinct services that can be deployed and managed independently of one another.

### Setup
#### 1. Configure a Database
1. Set up a Postgres database using a Helm Chart.
2. Test Database is accessible within the cluster via Port Forwarding
3. Run Seed Files
4. Use eksctl to configure the kubeconfig context
5. Using kubectl apply -f "each config file in the deployment directory", create the postgresql pod, service, volume, the 
   configMap containing the environment variables and secret
6. inspect that the pods and services all run properly
7. Run "kubectl get svc" to get the loadbalancer Endpoint

#### Verifying The Application.
* Generate report for check-ins grouped by dates
`curl <LOADBALANCER_ENDPOINT>/api/reports/daily_usage`

* Generate report for check-ins grouped by users
`curl <LOADBALANCER_ENDPOINT>/api/reports/user_visits`
