oc create -f mlflow-cf-server-template.yaml
oc create -f mlflow-job-bc.yaml
oc create -f mlflow-job.yaml
oc create -f ceph-secret.yaml
