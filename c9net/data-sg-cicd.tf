data "aws_security_group" "eks-cicd-sg" {
  vpc_id = data.aws_vpc.vpc-cicd.id
  filter {
    name   = "tag:kakao"
    values = ["eks-cicd"]
  }
}







