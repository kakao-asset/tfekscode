resource "aws_ssm_parameter" "tf-eks-id" {
  name        = "/kakao/tf-eks/id"
  description = "The unique id for the kakao"
  type        = "String"
  value       = random_id.id1.hex

  tags = {
    kakao = "tf-eks-kakao"
  }
}

resource "aws_ssm_parameter" "tf-eks-keyid" {
  name        = "/kakao/tf-eks/keyid"
  description = "The keyid for the kakao"
  type        = "String"
  value       = aws_kms_key.ekskey.key_id

  tags = {
    kakao = "tf-eks-kakao"
  }
}



resource "aws_ssm_parameter" "tf-eks-keyarn" {
  name        = "/kakao/tf-eks/keyarn"
  description = "The keyid for the kakao"
  type        = "String"
  value       = aws_kms_key.ekskey.arn

  tags = {
    kakao = "tf-eks-kakao"
  }
}

resource "aws_ssm_parameter" "tf-eks-region" {
  name        = "/kakao/tf-eks/region"
  description = "The region for the kakao"
  type        = "String"
  value       = var.region

  tags = {
    kakao = "tf-eks-kakao"
  }
}

resource "aws_ssm_parameter" "tf-eks-cluster-name" {
  name        = "/kakao/tf-eks/cluster-name"
  description = "The EKS cluster name for the kakao"
  type        = "String"
  value       = var.cluster-name

  tags = {
    kakao = "tf-eks-kakao"
  }
}

