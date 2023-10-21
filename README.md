### Deploy model_example_bbbb via `DREAM cli`, `kubectl cli` or `docker` 

__via DREAM cli__ 
Simple way to deploy to k8s


```
dream models deploy model_example_bbbb v1
```


__via kubectl directly__
Direct way to deploy to k8s


```
git clone --branch v1 --single-branch git@github.com:dreamutherland/model_example_bbbb.git
kubectl create namespace serve-model-model-example-bbbb
kubectl create -f mlflow-serving.yaml
kubectl expose deployment model_example_bbbb-deployment --port [PORT] --type="LoadBalancer"
```


__via docker (local)__
Local way to quickly test the image


```
docker run -d -p PORT:PORT jleighsutherland/model_example_bbbb:v1
```


### Test "model_example_bbbb" by executing `./infer.sh` 

__via infer.sh__ 


```
./infer.sh
```

