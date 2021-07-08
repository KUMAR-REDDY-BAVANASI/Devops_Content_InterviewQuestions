
#!/bin/bash
yum update -y
yum install wget -y && yum install unzip -y
# installing eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /bin
eksctl version
# installing IAM authenticator
curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator /tmp
cd /tmp chmod +x ./aws-iam-authenticator
mv /tmp/aws-iam-authenticator /bin
# installing aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
# installing kubectl
curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
kubectl version --short --client


===============================================
eksctl create cluster \
--name k8-cluster \
--version 1.18 \
--region ap-south-1 \
--nodegroup-name linux \
--nodes 3 \
--nodes-min 2 \
--nodes-max 3 \
--with-oidc \
--ssh-access \
--ssh-public-key ansible \
--managed
