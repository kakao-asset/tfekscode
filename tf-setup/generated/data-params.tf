data "aws_ssm_parameter" "tf-eks-id" {
  name = "/kakao/tf-eks/id"
}

data "aws_ssm_parameter" "tf-eks-keyid" {
  name = "/kakao/tf-eks/keyid"
}

data "aws_ssm_parameter" "tf-eks-keyarn" {
  name = "/kakao/tf-eks/keyarn"
}

data "aws_ssm_parameter" "tf-eks-region" {
  name = "/kakao/tf-eks/region"
}

data "aws_ssm_parameter" "tf-eks-cluster-name" {
  name = "/kakao/tf-eks/cluster-name"
}
