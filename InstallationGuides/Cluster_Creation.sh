eksctl create cluster \
--name stg \
--version 1.18 \
--nodegroup-name workers \
--nodes 2 \
--nodes-min 1 \
--nodes-max 3 \
--managed \
--region=ap-south-1 