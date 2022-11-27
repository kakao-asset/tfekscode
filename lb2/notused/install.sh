
#aws iam create-policy     --policy-name AWSLoadBalancerControllerIAMPolicy     --policy-document file://iam-policy.json
#curl -o iam-policy.json https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/main/docs/install/iam_policy.json


eksctl utils associate-iam-oidc-provider   --region  ap-northeast-2 --cluster prod-eks  --approve
# helm chart does this if you let it
eksctl create iamserviceaccount --cluster prod-eks --namespace=kube-system --name=aws-load-balancer-controller --attach-policy-arn=arn:aws:iam::566972129213:policy/AWSLoadBalancerControllerIAMPolicy --approve
#helm repo add eks https://aws.github.io/eks-charts

kubectl apply -k "github.com/aws/eks-charts/stable/aws-load-balancer-controller//crds?ref=master"

helm upgrade -i aws-load-balancer-controller eks/aws-load-balancer-controller -n kube-system --set clusterName=prod-eks --set serviceAccount.create=false --set serviceAccount.name=aws-load-balancer-controller --set image.repository=602401143452.dkr.ecr.ap-northeast-2.amazonaws.com/amazon/aws-load-balancer-controller 